package connection;

import java.net.*;
import java.io.*;
import java.util.*;

import boardInfo.Board;
import boardInfo.Dice;
import game.GameControl;
import game.GameSave;
import playerInfo.PlayerColor;

public class Connection extends Thread{
	private Socket cli;
	private PrintStream serverStream;
	private Scanner scanner;
	private GameControl game;
	private boolean gameEnded;
	
	public Connection(String ip, int port, GameControl gameControl) throws UnknownHostException, IOException{
		this.cli = new Socket(ip, port);
		System.out.println("O cliente se conectou ao servidor!");
		
		serverStream = new PrintStream(cli.getOutputStream());
		scanner = new Scanner(cli.getInputStream());
		game = gameControl;
		gameEnded = false;
		
		start();
	}
	
	public void run(){
		while(scanner.hasNextLine() && !gameEnded){
			game.loadMap(GameSave.loadFromServer(scanner.nextLine()), Dice.getCurValue());
			game.getLoadedBoard().setPlayer(PlayerColor.get(scanner.nextInt()));
			gameEnded = scanner.nextBoolean();
		}
		
		game.endGame();
		
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
	
	
}
