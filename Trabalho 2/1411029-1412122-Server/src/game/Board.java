package game;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

/**
 * Class that contains the current game board
 */
public class Board {
	private String saveFile;
	
	/**
	 * Default constructor that sets the board for a new game.
	 */
	public Board(){
		Scanner scannerFile;
		try {
			scannerFile = new Scanner(new File("saves/gameStartCrypto.ludosave"));
			this.setBoard(scannerFile.nextLine());
			scannerFile.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * Alternative board constructor for loading a game already in progress
	 * @param board - string containing the board (a ludosave file content)
	 */
	public Board(String board){
		this.setBoard(board);
	}
	
	/**
	 * Alternative board constructor for loading a game already in progress
	 * @param file - ludosave file
	 * @throws FileNotFoundException
	 */
	public Board(File file) throws FileNotFoundException{
		Scanner scannerFile = new Scanner(file);
		this.setBoard(scannerFile.nextLine());
		scannerFile.close();
	}
	
	/**
	 * Changes the current board
	 * @param board - the new board
	 */
	public void setBoard(String board){
		saveFile = board;
	}
	
	/**
	 * Returns the current board
	 * @return board
	 */
	public String getBoard(){
		return saveFile;
	}
}
