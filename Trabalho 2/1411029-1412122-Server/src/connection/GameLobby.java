package connection;

import java.io.IOException;
import java.net.*;
import java.util.LinkedList;
import java.util.List;
import java.util.Observable;
import java.util.Observer;

import game.Board;

/**
 * Class that manages the players' connections and the game.
 */
public class GameLobby extends Observable {
	private List<ClientConnection> playerList;
	private boolean ready;
	private boolean gameEnded;
	private Board board = new Board();
	
	private int playerCount = 0;
	
	/**
	 * Game Lobby constructor
	 */
	public GameLobby(Observer ob){
		playerList = new LinkedList<ClientConnection>();
		ready = false;
		gameEnded = false;
		this.addObserver(ob);
	}
	
	private void sendLog(String message)
	{
		System.out.println(message);
		notifyObservers(message);
	}
	
	/**
	 * Treats incoming connections
	 * @param socket - socket of a player connection
	 */
	public void IncreasePlayers(Socket socket) {
		playerCount++;
		
		try {
			playerList.add(new ClientConnection(playerCount, socket, this));
			
			if(playerList.size() == 4)
			{
				ready = true;
				sendLog("O jogo irá começar");
			}
		} catch (IOException e) {
			sendLog("Erro ao incrementar lista de jogadores");
			e.printStackTrace();
		}
	}
	
	/**
	 * Checks if the game has begun
	 * @return true if the game has begun, false if not
	 */
	public boolean checkStatus(){
		return ready;
	}
	
	/**
	 * Returns the list of players' ClientConnections
	 * @return list of ClientConnections
	 */
	public List<ClientConnection> getPlayerList(){
		return playerList;
	}
	
	/**
	 * Returns the current board
	 * @return board
	 */
	public String getBoard(){
		return board.getBoard();
	}
	
	/**
	 * Changes the current board (for example, when a player has finished its turn.
	 * @param board - the current board (saveFile)
	 */
	public void setBoard(String board){
		this.board.setBoard(board);
		if(ready) sendBoard();
	}
	
	/**
	 * Sends the current board to every player in the match.
	 */
	public void sendBoard(){
		sendLog("Enviando tabuleiro aos clientes conectados");
		
		for(ClientConnection client : playerList){
			System.out.println(board);
			client.getStream().println(board.getBoard()); //sends the current board
			client.getStream().print(gameEnded); //sends false if the game has not ended yet
			System.out.println("Board sent via NeLSOn");
		}
	}
	
	/**
	 * Checks if game has ended
	 * @return true if game has ended, false if not
	 */
	public boolean getGameStatus(){
		return gameEnded;
	}
	
	/**
	 * Sets if game has ended
	 * @param gameEnded - true if game has ended, false if not
	 */
	public void setGameStatus(boolean gameEnded){
		this.gameEnded = gameEnded;
	}
}
