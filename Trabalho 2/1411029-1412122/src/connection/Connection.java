package connection;

import java.net.*;
import java.io.*;
import java.util.*;

import boardInfo.Board;
import boardInfo.Dice;
import game.GameControl;
import game.GameSave;
import playerInfo.PlayerColor;

public class Connection extends Thread {
	private Socket cli;
	private PrintStream serverStream;
	private Scanner scanner;
	private GameControl game;
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
			// TODO set player
			System.out.println("CHEGOU O PLAYER " + player);
			
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
				
				System.out.println(message);
				game.loadMap(GameSave.loadFromServer(message), Dice.getCurValue());
				gameEnded = scanner.nextBoolean();
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
	
	public void sendToServer(Board board) throws Exception{
		GameSave.saveToServer(board, serverStream);
	}
	
	public void Disconnect() throws IOException{
		serverStream.close();
		cli.close();
		System.out.println("O cliente terminou de executar!");
	}
	
	public int getPlayerNumber()
	{
		return 2;
	}
	
	
}
