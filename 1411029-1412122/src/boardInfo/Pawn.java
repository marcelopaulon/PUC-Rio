package boardInfo;

import playerInfo.PlayerColor;

public final class Pawn
{
	private PlayerColor color;
	private int walkCount;

	public Pawn(PlayerColor color)
	{
		this.color = color;
		walkCount = 0;
	}

	public PlayerColor getColor()
	{
		return color;
	}

	public int getWalkCount()
	{
		return walkCount;
	}
}
