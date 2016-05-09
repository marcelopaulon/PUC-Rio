package boardInfo;

import playerInfo.PlayerColor;

public class Track {
	private Square[] squareList;
	
	public Track()
	{
		squareList = new Square[52];
		
		try {
			resetSquareList();
		} catch (Exception e) {
			e.printStackTrace();
		}	
	}
	
	private void resetSquareList() throws Exception
	{
		int i;
		
		PlayerColor curAreaColor;
		
		for(i = 0; i < 52; i++)
		{
			if(i < 13) curAreaColor = PlayerColor.GREEN;
			else if(i < 26) curAreaColor = PlayerColor.YELLOW;
			else if(i < 39) curAreaColor = PlayerColor.BLUE;
			else if(i < 52) curAreaColor = PlayerColor.RED;
			else throw new Exception("Invalid square index");
			squareList[i] = new Square(curAreaColor);
		}
	}
}
