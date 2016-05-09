package boardInfo;

import playerInfo.PlayerColor;

public class Lane {
	private PlayerColor laneColor;
	private Square[] squareList;
	
	public Lane(PlayerColor laneColor)
	{
		this.laneColor = laneColor;
		
		squareList = new Square[4];
		resetLane();
	}
	
	public void resetLane()
	{
		int i;
		for(i = 0; i < 4; i++)
		{
			squareList[i] = new Square(laneColor);
		}
	}
	
	public void addPawn(Pawn pawn)
	{
		squareList[0].addPawn(pawn);
	}
}