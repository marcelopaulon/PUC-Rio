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
	}
	
	public void run(){
		
		//Runs while game hasn't ended
		while(scanner.hasNextLine() && (!lobby.getGameStatus())){ //game hasn't ended
			String message = scanner.nextLine();
			lobby.setBoard(message);
			lobby.setGameStatus(scanner.nextBoolean());
		}
		
		//Closing input stream scanner
		scanner.close();
		
		//Closing connection
		try {
			socket.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
