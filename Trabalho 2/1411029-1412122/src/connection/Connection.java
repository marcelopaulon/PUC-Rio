package connection;

import java.net.*;
import java.io.*;
import java.util.*;

import boardInfo.Dice;
import game.GameControl;
import game.GameSave;

public class Connection extends Thread {
	private Socket cli;
	private static PrintStream serverStream;
	private Scanner scanner;
	public static GameControl game;
	private boolean gameEnded;
	
	public Connection(String ip, int port) throws UnknownHostException, IOException{
		this.cli = new Socket(ip, port);
		System.out.println("O cliente se conectou ao servidor!");
		
		serverStream = new PrintStream(cli.getOutputStream());
		scanner = new Scanner(cli.getInputStream());
		gameEnded = false;
	}
	
	public void startGame(GameControl control)
	{
		game = control;
		start();
	}
	
	public void run(){
		String check = scanner.nextLine();
		
		if(!check.equalsIgnoreCase("NeLSOn"))
		{
			System.out.println("Não foi possível iniciar a conexão! Falha ao receber dados (Valor recebido: " + check +")");
		}
		else
		{
			int player = scanner.nextInt();
			
			System.out.println("CHEGOU O PLAYER " + player);
			game.setOnlinePlayerNumber(player);
			
			System.out.println("Esperando início do jogo");

			while(!gameEnded)
			{
				if(!scanner.hasNextLine())
				{
					try {
						Thread.sleep(100);
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
					continue;
				}
				
				String message = scanner.nextLine();
				
				while(message.equals("") || message == null || message.equals("null"))
				{
					if(scanner.hasNextLine()) 
					{
						message = scanner.nextLine();
					}
				}
				
				synchronized(this) //região crítica
				{
					System.out.println(message);
					String[] msgsplit = message.split("ludoseparator");
					for(String s : msgsplit){
						System.out.println(s);
					}
					game.loadMap(GameSave.loadFromServer(msgsplit[0]), Dice.getCurValue());
					gameEnded = Boolean.parseBoolean(msgsplit[1]);
				}
			}
			
			game.endGame();
		}
				
		try {
			Disconnect();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void sendToServer(GameControl game) throws Exception{
		GameSave.saveToServer(game, serverStream);
	}
	
	public void Disconnect() throws IOException{
		serverStream.close();
		cli.close();
		System.out.println("O cliente terminou de executar!");
	}
		
}
