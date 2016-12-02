package connection;

import java.io.IOException;
import java.net.*;
import java.util.LinkedList;
import java.util.List;

import game.Board;

/**
 * Class that manages the players' connections and the game.
 */
public class GameLobby {
	private List<ClientConnection> playerList;
	private int currentPlayer;
	private boolean ready;
	private boolean gameEnded;
	private Board board;
	
	/**
	 * Game Lobby constructor
	 */
	public GameLobby(){
		playerList = new LinkedList<ClientConnection>();
		ready = false;
		gameEnded = false;
		Board board = new Board();
	}
	
	/**
	 * Treats incoming connections
	 * @param socket - socket of a player connection
	 * @throws IOException when the connection is not successful
	 */
	public void IncreasePlayers(Socket socket) throws IOException{
		playerList.add(new ClientConnection(socket,this));
		if(playerList.size() == 4){
			ready = true;
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
	 * @param board - the current board (savefile)
	 */
	public void setBoard(String board){
		this.board.setBoard(board);
		if(ready) sendBoard();
	}
	
	/**
	 * Sends the current board to every player in the match.
	 */
	public void sendBoard(){
		int curPlayer = UpdateCurrentPlayer();
		for(ClientConnection client : playerList){
			client.getStream().println(board); //sends the current board
			client.getStream().println(curPlayer); //sends the current player
			client.getStream().print(gameEnded); //sends false if the game has not ended yet
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

	/**
	 * Changes the current player and returns it
	 * @return the current player
	 */
	private int UpdateCurrentPlayer() {
		if(currentPlayer >= 4){
			currentPlayer = 1;
		}
		
		else{
			currentPlayer++;
		}
		
		return currentPlayer;
	}
}
