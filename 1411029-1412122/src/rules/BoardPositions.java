package rules;

import playerInfo.PlayerColor;

public class BoardPositions {
	public static int getPositionOfLastSquareOfPlayer(PlayerColor currentPlayer){
		switch(currentPlayer){
			case BLUE:
				return 33;
			case GREEN:
				return 7;
			case RED:
				return 46;
			case YELLOW:
				return 20;
			default:
				//TODO: Exception?
				return -1;
			}
	}
	
	public static int getInitialSquarePosition(PlayerColor color){
		switch(color){
			case BLUE:
				return 35;
			case GREEN:
				return 9;
			case RED:
				return 48;
			case YELLOW:
				return 22;
		}
		
		//TODO: Exception?
		return -1;
	}
	
	public static PlayerColor isInitialSquarePosition(int position){
		switch(position){
			case 35:
				return PlayerColor.BLUE;
			case 9:
				return PlayerColor.GREEN;
			case 48:
				return PlayerColor.RED;
			case 22:
				return PlayerColor.YELLOW;
		}
		
		return null;
	}
	
	public static boolean isShelterPosition(int position)
	{
		if(isInitialSquarePosition(position) != null) 
		{
			return true;
		}
		
		if(position == 5 || position == 18 || position == 31 || position == 44)
		{
			return true;
		}
		
		return false;
	}
	
	public static PlayerColor isLastSquarePosition(int position){
		switch(position){
			case 33:
				return PlayerColor.BLUE;
			case 7:
				return PlayerColor.GREEN;
			case 46:
				return PlayerColor.RED;
			case 20:
				return PlayerColor.YELLOW;
		}
		
		return null;
	}
}
