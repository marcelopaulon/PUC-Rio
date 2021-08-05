package connection;

import java.io.IOException;
import java.net.*;
import java.util.Observable;

import javax.swing.JFrame;
import javax.swing.JOptionPane;

import gui.Logger;

public class Program extends Observable {
	private static Program instance = null;
	
	public static Program getInstance()
	{
		if(instance == null)
		{
			instance = new Program();
		}
		return instance;
	}
	
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
	
	private ServerSocket server = null;
	private int port = -1;
	
	public Program()
	{
		instance = this;
		JFrame window = new JFrame();
		window.setSize(1200, 700);
		window.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		while(port == -1)
		{
			port = tryGetPort(window);
		}
		
		Logger loggerUI = new Logger();
		this.addObserver(loggerUI);
		
		window.add(loggerUI);
		
		window.setVisible(true);
		
		//Opens server port
		try {
			server = new ServerSocket(port);
			sendLog("Porta " + port + " aberta!");
		} catch (IOException e) {
			e.printStackTrace();
			sendLog("Erro ao abrir porta " + port + ". Execução interrompida");
		}
		
		boolean firstConnection = true;
				
		if(server != null)
		{
			//Creates lobby (where player connections and the game are managed)
			GameLobby lobby = new GameLobby(loggerUI);
			
			long start = 0;
			
			//While the game has not started, accept incoming player connections and pass them to the lobby
			while(!lobby.checkStatus()){
				Socket client = null;
				
				try {
					if(firstConnection)
					{
						server.setSoTimeout(60 * 3 * 1000);
					}
					else
					{
						server.setSoTimeout((int) (60 * 3 * 1000 - (System.currentTimeMillis() - start)));
					}
					
					client = server.accept();
					
					if(firstConnection)
					{
						firstConnection = false;
						start = System.currentTimeMillis();
					}
				} catch(SocketTimeoutException e) {
					sendLog("O servidor será encerrado pois após 3 minutos os 4 usuários não entraram no servidor.");
					lobby.sendMessage("Desconectado. O tempo limite (3 minutos) para preenchimento da sessão se esgotou.");
					closeServer();
					return;
				} catch (IOException e) {
					sendLog("Erro ao abrir conexão");
					e.printStackTrace();
				}
				
				sendLog("Nova conexão com o cliente " + client.getInetAddress().getHostAddress());
				lobby.IncreasePlayers(client);
			}
			
			lobby.sendBoard();
		}
	}
	
	public void closeServer(){
		try 
		{
			server.close();
			sendLog("Servidor terminou de executar.");
		} catch (IOException e) {
			sendLog("Não foi possível fechar a porta " + port);
			e.printStackTrace();
		}	
	}
}
