package game;

import boardInfo.Square;
import boardInfo.Track;
import playerInfo.PlayerColor;

class Barriers
{
	public static boolean opponentHasBarrierAt(Track track, PlayerColor currentPlayer, int position)
	{
		if (BoardPositions.isShelterPosition(position))
		{
			return false;
		}

		Square square = track.getSquareAt(position);

		if (square.getPawnCount() > 1 && square.getPawnsColors().get(0) != currentPlayer)
		{
			return true;
		}

		return false;
	}

	public static boolean currentPlayerHasBarrierAtTrack(Track track, PlayerColor currentPlayer, int position)
	{
		if (BoardPositions.isShelterPosition(position))
		{
			return false;
		}

		Square square = track.getSquareAt(position);

		if (square.getPawnCountByColor(currentPlayer) > 1)
		{
			return true;
		}

		return false;
	}
	
	public static boolean currentPlayerHasBarrier(Track track, PlayerColor currentPlayer)
	{
		for(int position = 1; position <= 52; position++)
		{
			if(currentPlayerHasBarrierAtTrack(track, currentPlayer, position))
			{
				return true;
			}
		}
		
		return false;
	}
}
