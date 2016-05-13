package boardInfo;

import java.util.LinkedList;
import java.util.List;

import playerInfo.PlayerColor;

public class Square {
	private List<Pawn> pawns;
	private PlayerColor areaColor;
	
	public Square(PlayerColor areaColor)
	{
		this.areaColor = areaColor;
		pawns = new LinkedList<Pawn>();
	}
	
	public int getPawnCount()
	{
		return pawns.size();
	}
	
	public void addPawn(Pawn pawn)
	{
		pawns.add(pawn);
	}
	
	public void removePawn()
	{
		pawns.remove(0);
	}
			
	public PlayerColor getPawnsColor()
	{
		if(getPawnCount() < 1) return null;
		return pawns.get(0).getColor();
	}
	
	public PlayerColor getAreaColor()
	{
		return areaColor;
	}
}
