package boardInfo;

import playerInfo.PlayerColor;

public class Square extends PawnList {
	private PlayerColor areaColor;
	
	public Square(PlayerColor areaColor)
	{
		super(0, null);
		this.areaColor = areaColor;
	}
	
	public void addPawn(Pawn pawn)
	{
		super.setPawnsColor(pawn.getColor());
		super.addPawn();
	}
	
	public void removePawn()
	{
		super.removePawn();
	}
	
	public PlayerColor getAreaColor()
	{
		return areaColor;
	}
}
