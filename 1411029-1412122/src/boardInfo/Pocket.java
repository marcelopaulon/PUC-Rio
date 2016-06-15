package boardInfo;

import playerInfo.PlayerColor;

public final class Pocket extends PawnList
{
	private PlayerColor color;

	public Pocket(PlayerColor color)
	{
		super(null);
		reset();
		this.color = color;
	}

	public void addPawn()
	{
		super.addPawn(new Pawn(color));
	}

	public PlayerColor getColor()
	{
		return color;
	}
}