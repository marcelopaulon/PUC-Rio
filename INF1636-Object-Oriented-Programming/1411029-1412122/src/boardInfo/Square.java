package boardInfo;

import playerInfo.PlayerColor;

public final class Square extends PawnList
{
	private PlayerColor areaColor;

	public Square(PlayerColor areaColor)
	{
		super(null);
		this.areaColor = areaColor;
	}

	public void addPawn(PlayerColor color) {
		super.addPawn(new Pawn(color));
	}
	
	public void addPawn(Pawn pawn)
	{
		super.addPawn(pawn);
	}

	public void removePawn(PlayerColor color) throws Exception
	{
		super.removePawn(color);
	}

	public PlayerColor getAreaColor()
	{
		return areaColor;
	}
}
