package connection;

import java.io.*;
import java.net.*;
import java.util.Scanner;

import game.PlayerColor;

/**
 * Class that sends and receives game data from the players
 */
public class ClientConnection extends Thread{
	private Socket socket;
	private PrintStream stream;
	private Scanner scanner;
	private GameLobby lobby;
	private int playerNumber;
	private String nickname;
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
		
		playerNumber++;
		if(playerNumber == 5) playerNumber = 1;
		
		this.stream.println(playerNumber);
		
		try {
			nickname = this.scanner.nextLine() + " (" + PlayerColor.getPlayerName(PlayerColor.get(playerNumber)) + ")";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		start();
	}
	
	public void run(){
		
		//Runs while game hasn't ended
		while(scanner.hasNextLine() && (!lobby.getGameStatus())){ //game hasn't ended
			String message = scanner.nextLine();
			
			synchronized(this)
			{				
				if(message.startsWith("MESSAGE"))
				{
					lobby.sendMessage(message);
				}
				else
				{
					String[] msgsplit = message.split("ludoseparator");
					lobby.setBoard(msgsplit[0]);
					lobby.setGameStatus(Boolean.parseBoolean(msgsplit[1]));
				}
			}
		}
		
		//Closing input stream scanner
		scanner.close();

		lobby.sendBoard();
		
		//Closing connection
		try {
			socket.close();
			System.out.println("Socket do player " + playerNumber + " fechado.");
		} catch (IOException e) {
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

	public String getNickname() {
		return nickname;
	}
}
