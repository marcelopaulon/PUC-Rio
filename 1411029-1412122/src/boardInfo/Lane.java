package boardInfo;

import playerInfo.PlayerColor;

public class Lane {
	private PlayerColor laneColor;
	private Square[] squareList;
	
	public Lane(PlayerColor laneColor)
	{
		this.laneColor = laneColor;
		
		squareList = new Square[5];
		resetLane();
	}
	
	public void resetLane()
	{
		int i;
		for(i = 1; i <= 5; i++)
		{
			squareList[i - 1] = new Square(laneColor);
		}
	}
	
	public void addPawn()
	{
		squareList[0].addPawn(new Pawn(laneColor));
	}
	
	public void removePawn()
	{
		squareList[4].removePawn();
	}
	
	public Square getSquareAt(int position)
	{
		return squareList[position - 1];
	}
}