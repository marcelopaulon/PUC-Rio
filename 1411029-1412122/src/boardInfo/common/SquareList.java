package boardInfo.common;

import boardInfo.Pawn;
import boardInfo.Square;
import playerInfo.PlayerColor;

public abstract class SquareList
{
	private Square[] squareList;

	private int size;

	public SquareList(int size)
	{
		squareList = new Square[size];
		this.size = size;
	}

	public Square getSquareAt(int position)
	{
		if(position > squareList.length) 
		{
			return null;
		}
		
		return squareList[position - 1];
	}

	public int getSize()
	{
		return size;
	}

	public void reset(PlayerColor areaColor)
	{
		for (int position = 1; position <= size; position++)
		{
			resetSquare(position, areaColor);
		}
	}

	public void resetSquare(int position, PlayerColor areaColor)
	{
		squareList[position - 1] = new Square(areaColor);
	}

	public void addPawn(int position, PlayerColor color)
	{
		squareList[position - 1].addPawn(new Pawn(color));
	}

	public void removePawn(int position, PlayerColor color) throws Exception
	{
		squareList[position - 1].removePawn(color);
	}
}
