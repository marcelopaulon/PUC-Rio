package boardInfo;

import playerInfo.PlayerColor;

public abstract class PawnList {
	private int pawnCount;
	private PlayerColor pawnColor = null;
	
	public PawnList(int startPawnCount, PlayerColor startPawnColor)
	{
		this.pawnCount = startPawnCount;
		this.pawnColor = startPawnColor;
	}
	
	protected void addPawn()
	{
		pawnCount++;
	}
	
	protected void removePawn()
	{
		pawnCount--;
		
		if(getPawnCount() == 0)
		{
			setPawnsColor(null);
		}
	}
	
	public final void reset()
	{
		pawnColor = null;
		pawnCount = 0;
	}
	
	public final int getPawnCount()
	{
		return pawnCount;
	}
	
	public final PlayerColor getPawnsColor()
	{
		return this.pawnColor;
	}
	
	protected void setPawnsColor(PlayerColor color)
	{
		this.pawnColor = color;
	}
}
