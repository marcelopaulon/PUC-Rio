package rules;

import boardInfo.Square;
import boardInfo.Track;
import playerInfo.PlayerColor;

public class Barriers {
	public static boolean opponentHasBarrierAt(Track track, PlayerColor currentPlayer, int position)
	{
		if(BoardPositions.isShelterPosition(position))
		{
			return false;
		}
		
		Square square = track.getSquareAt(position);
				
		if(square.getPawnCount() > 1 && square.getPawnsColors().get(0) != currentPlayer)
		{
			return true;
		}
		
		return false;
	}
	
	private boolean currentPlayerHasBarrierAt(Track track, PlayerColor currentPlayer, int position)
	{
		if(BoardPositions.isShelterPosition(position))
		{
			return false;
		}
		
		Square square = track.getSquareAt(position);
		
		if(square.getPawnCountByColor(currentPlayer) > 1)
		{
			return true;
		}
		
		return false;
	}
}
