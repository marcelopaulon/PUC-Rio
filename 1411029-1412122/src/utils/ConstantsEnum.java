package utils;

public class ConstantsEnum
{
	public static final float squareSize = 34;

	public static final float yardSize = 6 * squareSize;

	public static final float rectSize = (float) (7.5 * squareSize);

	public static enum SquareType
	{
		YARDSQUARE, TRACKSQUARE, LANESQUARE, POCKETSQUARE
	}
	
	public static enum Action
	{
		ROLLDICE, SELECTPAWN, SELECTPAWNBONUS10, SELECTPAWNBONUS20, GAMEENDED
	}
}