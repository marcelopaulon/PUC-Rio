package connection;

import java.io.IOException;
import java.net.*;
import java.util.Observable;

import javax.swing.JFrame;
import javax.swing.JOptionPane;

import gui.Logger;

public class Program extends Observable {
	private int tryGetPort(JFrame window)
	{
		String s = (String)JOptionPane.showInputDialog(
				window,
                "Digite a porta a ser aberta",
                "UltimateMegaLudo Server",
                JOptionPane.PLAIN_MESSAGE,
                null,
                null,
                "5002");

		try
		{
			return Integer.parseInt(s);
		}
		catch(NumberFormatException e)
		{
			return -1;
		}
	}
	
	private void sendLog(String message)
	{
		System.out.println(message);
		this.setChanged();
		notifyObservers(message);
	}
	
	public static void main (String[] args) throws IOException {
		new Program();
	}
	
	public Program()
	{
		JFrame window = new JFrame();
		window.setSize(1200, 700);
		window.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		int port = -1;
		
		while(port == -1)
		{
			port = tryGetPort(window);
		}
		
		Logger loggerUI = new Logger();
		this.addObserver(loggerUI);
		
		window.add(loggerUI);
		
		window.setVisible(true);
		
		//Opens server port
		ServerSocket server = null;
		try {
			server = new ServerSocket(port);
			sendLog("Porta " + port + " aberta!");
		} catch (IOException e) {
			e.printStackTrace();
			sendLog("Erro ao abrir porta " + port + ". Execução interrompida");
		}
		
		if(server != null)
		{
			//Creates lobby (where player connections and the game are managed)
			GameLobby lobby = new GameLobby(loggerUI);
			
			//While the game has not started, accept incoming player connections and pass them to the lobby
			while(!lobby.checkStatus()){
				Socket client = null;
				
				try {
					client = server.accept();
				} catch (IOException e) {
					sendLog("Erro ao abrir conexão");
					e.printStackTrace();
				}
				
				sendLog("Nova conexão com o cliente " + client.getInetAddress().getHostAddress());
				lobby.IncreasePlayers(client);
			}
			
			lobby.sendBoard();
			
			//Wait for the game to end
			while(!lobby.getGameStatus());
			
			//Close connection
			try {
				server.close();
			} catch (IOException e) {
				sendLog("Não foi possível fechar a porta " + port);
				e.printStackTrace();
			}
		}
	}
}
