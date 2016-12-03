package connection;

import java.io.*;
import java.net.*;
import java.util.Scanner;

/**
 * Class that sends and receives game data from the players
 */
public class ClientConnection extends Thread{
	private Socket socket;
	private PrintStream stream;
	private Scanner scanner;
	private GameLobby lobby;
	private int playerNumber;
	private static int playersDisconnected = 0;
	
	/**
	 * Constructor
	 * @param socket - socket of a player connection
	 * @param lobby - GameLobby that the player is connected to
	 * @throws IOException - when it's unable to get a stream
	 */
	public ClientConnection(int playerNumber, Socket socket, GameLobby lobby) throws IOException {
		this.socket = socket;
		this.stream = new PrintStream(socket.getOutputStream());
		this.scanner = new Scanner(socket.getInputStream());
		this.lobby = lobby;
		this.playerNumber = playerNumber;
		
		this.stream.println("NeLSOn"); // Network Ludo Sign-On
		this.stream.println(playerNumber);
		
		start();
	}
	
	public void run(){
		
		//Runs while game hasn't ended
		while(scanner.hasNextLine() && (!lobby.getGameStatus())){ //game hasn't ended
			String message = scanner.nextLine();
			
			synchronized(this) //região crítica
			{
				System.out.println(message);
				String[] msgsplit = message.split("ludoseparator");
				for(String s : msgsplit){
					System.out.println(s);
				}
				lobby.setBoard(msgsplit[0]);
				System.out.println("Board recebido: " + msgsplit[0]);
				lobby.setGameStatus(Boolean.parseBoolean(msgsplit[1]));
				System.out.println("Game status recebido: " + msgsplit[1]);
			}
			/*
			lobby.setBoard(message);
			lobby.setGameStatus(scanner.nextBoolean());*/
		}
		
		//Closing input stream scanner
		scanner.close();

		lobby.sendBoard();
		
		//Closing connection
		try {
			socket.close();
			System.out.println("Socket do player " + playerNumber + " fechado.");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		playersDisconnected++;
		
		if(playersDisconnected == 4)
		{
			Program.getInstance().closeServer();
		}
	}
	
	/**
	 * Returns the client input stream
	 * @return client input stream
	 */
	public PrintStream getStream() {
		return stream;
	}
}
