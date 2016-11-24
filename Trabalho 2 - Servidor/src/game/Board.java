package game;

public class Board {
	String saveFile = null;
	
	public void setBoard(String board){
		saveFile = board;
	}
	
	public String getBoard(){
		return saveFile;
	}
}
