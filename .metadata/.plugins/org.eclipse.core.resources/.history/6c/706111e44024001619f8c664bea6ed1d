package boardInfo;

import boardInfo.common.SquareList;
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
	
	public void removePawn(int position)
	{
		super.removePawn(position);
	}
}