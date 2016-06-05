package rules;

import boardInfo.Lane;
import boardInfo.Pocket;
import boardInfo.Square;
import boardInfo.Track;
import boardInfo.Yard;
import playerInfo.PlayerColor;

public class MovementRules
{

	public static boolean canMoveFromLaneToPocket(int diceValue, PlayerColor currentPlayer, int pawnPosition)
	{
		if (pawnPosition + diceValue == 6)
		{
			return true;
		}

		return false;
	}

	public static boolean canMoveInsideLane(Lane lane, int diceValue, PlayerColor currentPlayer, int pawnPosition)
	{
		if (pawnPosition + diceValue < 6)
		{
			Square destination = lane.getSquareAt(pawnPosition + diceValue);
			if (destination != null && destination.getPawnCount() < 2)
				return true;
		}

		return false;
	}

	public static boolean canMoveFromTrackToLane(Lane lane, int diceValue, PlayerColor currentPlayer, int pawnPosition)
	{
		int lastSquareOfCurrentPlayer = BoardPositions.getPositionOfLastSquareOfPlayer(currentPlayer);

		for (int j = 0; j < diceValue; j++)
		{
			// Se ele chega na �ltima casa com um n�mero inferior ao tirado do
			// dado, ele entra na lane.
			if (pawnPosition + j == lastSquareOfCurrentPlayer)
			{
				Square destination;

				if (diceValue == 6 && j == 0) //Jogador tirou 6 e est� na �ltima posi��o do tabuleiro
				{
					return false; // destination � o pocket.
				}
				else
				{
					destination = lane.getSquareAt(pawnPosition + diceValue - lastSquareOfCurrentPlayer);
				}

				if (destination != null && destination.getPawnCount() < 2)
					return true;
				else
					return false;
			}
		}

		return false;
	}

	public static boolean canMoveFromTrackToPocket(int diceValue, PlayerColor currentPlayer, int pawnPosition)
	{
		int lastSquareOfCurrentPlayer = BoardPositions.getPositionOfLastSquareOfPlayer(currentPlayer);

		// est� na �ltima casa e tirou 6
		if (pawnPosition == lastSquareOfCurrentPlayer && diceValue == 6)
		{
			return true;
		}

		return false;
	}

	public static boolean canMoveInsideTrack(Track track, int diceValue, PlayerColor currentPlayer, int pawnPosition)
	{
		int lastSquareOfCurrentPlayer = BoardPositions.getPositionOfLastSquareOfPlayer(currentPlayer);

		Square destination;
		if (pawnPosition + diceValue > 52)
			destination = track.getSquareAt(pawnPosition + diceValue - 52);
		else
			destination = track.getSquareAt(pawnPosition + diceValue);

		for (int j = 0; j < diceValue; j++)
		{
			// Se ele chega na �tima casa com um n�mero inferior ao tirado do
			// dado, ele entra na lane. Logo, n�o pode continuar na track.
			if (pawnPosition + j == lastSquareOfCurrentPlayer)
				return false;

			if (pawnPosition + j <= 52 && Barriers.opponentHasBarrierAt(track, currentPlayer, pawnPosition + j))
				return false;
		}

		if (destination != null && destination.getPawnCount() < 2)
			return true;

		return false;
	}
	
	public static boolean canMovePawnFromBarrier(Track track, int diceValue, PlayerColor currentPlayer) {
		for(int position = 1; position <= 52; position++)
		{
			if(Barriers.currentPlayerHasBarrierAtTrack(track, currentPlayer, position))
			{
				if (MovementRules.canMoveInsideTrack(track, diceValue, currentPlayer, position))
				{
					return true;
				}
			}
		}
		
		return false;
	}

	public static boolean canMoveFromYardToTrack(Yard yard, int diceValue, PlayerColor currentPlayer)
	{

		if (yard.getCount() > 0 && diceValue == 5)
		{
			return true;
		}

		return false;
	}

	public static boolean gameFinished(Pocket pocket)
	{
		if (pocket.getPawnCount() == 4)
		{
			return true;
		}

		return false;
	}
}
