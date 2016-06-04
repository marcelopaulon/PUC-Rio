package rules;

import boardInfo.Lane;
import boardInfo.Pocket;
import boardInfo.Square;
import boardInfo.Track;
import boardInfo.Yard;
import playerInfo.PlayerColor;

public class MovementRules {

	public static boolean canMoveFromLaneToPocket(int diceValue, PlayerColor currentPlayer, int pawnPosition) {
		if(pawnPosition + diceValue == 6)
		{
			return true;
		}
		
		return false;
	}

	public static boolean canMoveInsideLane(Lane lane, int diceValue, PlayerColor currentPlayer, int pawnPosition) {
		if(pawnPosition + diceValue < 6)
		{
			Square destination = lane.getSquareAt(pawnPosition + diceValue);
			if(destination.getPawnCount() < 2) return true;
		}
		
		return false;		
	}
	
	public static boolean canMoveFromTrackToLane(Lane lane, int diceValue, PlayerColor currentPlayer, int pawnPosition) {
		int lastSquareOfCurrentPlayer = BoardPositions.getPositionOfLastSquareOfPlayer(currentPlayer);
		
		for(int j = 0; j < diceValue; j++)
		{
			if(pawnPosition + j == lastSquareOfCurrentPlayer) //Se ele chega na última casa com um número inferior ao tirado do dado, ele entra na lane.
			{ 
				Square destination;
				
				if(diceValue!=6) 
				{
					destination = lane.getSquareAt(pawnPosition + diceValue - lastSquareOfCurrentPlayer);
				}
				else
				{
					return false; //destination é o pocket.
				}
				
				if(destination.getPawnCount() < 2) return true;
				else return false;
			}
		}
		
		return false;
	}
	
	public static boolean canMoveFromTrackToPocket(int diceValue, PlayerColor currentPlayer, int pawnPosition) {
		int lastSquareOfCurrentPlayer = BoardPositions.getPositionOfLastSquareOfPlayer(currentPlayer);
		
		if(pawnPosition == lastSquareOfCurrentPlayer && diceValue == 6) //está na última casa e tirou 6
		{
			return true;
		}
		
		return false;
	}

	public static boolean canMoveInsideTrack(Track track, int diceValue, PlayerColor currentPlayer, int pawnPosition) {
		int lastSquareOfCurrentPlayer = BoardPositions.getPositionOfLastSquareOfPlayer(currentPlayer);
		
		Square destination;
		if(pawnPosition+diceValue>52) destination = track.getSquareAt(pawnPosition+diceValue-52);
		else destination = track.getSquareAt(pawnPosition+diceValue);
				
		for(int j = 0; j < diceValue; j++){
			if(pawnPosition + j == lastSquareOfCurrentPlayer) return false; //Se ele chega na útima casa com um número inferior ao tirado do dado, ele entra na lane. Logo, não pode continuar na track.
			if(pawnPosition + j <= 52 && Barriers.opponentHasBarrierAt(track, currentPlayer, pawnPosition + j)) return false;
		}
		
		if(destination.getPawnCount() < 2) return true;
		
		return false;
	}
	
	public static boolean canMoveFromYardToTrack(Yard yard, int diceValue, PlayerColor currentPlayer) {
		
		if(yard.getCount() > 0 && diceValue == 5)
		{
			return true;
		}
		
		return false;
	}
	
	public static boolean gameFinished(Pocket pocket) {
		if(pocket.getPawnCount() == 4)
		{
			return true;
		}
		
		return false;
	}
}
