package boardInfo;

import playerInfo.PlayerColor;

public final class Lane extends SquareList {
	private PlayerColor laneColor;
	
	public Lane(PlayerColor laneColor)
	{
		super(5);
		this.laneColor = laneColor;
		
		resetLane();
	}
	
	public void resetLane()
	{
		super.reset(laneColor);
	}
	
	public void addPawn(int position)
	{
		super.addPawn(position, laneColor);
	}
	
	public void removePawn()
	{
		super.removePawn(5);
	}
	
	
}