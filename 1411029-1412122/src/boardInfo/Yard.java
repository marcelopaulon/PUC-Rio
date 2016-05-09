package boardInfo;

public class Yard {
	private int pawnCount;
	
	public Yard()
	{
		reset();
	}
	
	public void removePawn()
	{
		pawnCount--;
	}
	
	public void addPawn()
	{
		pawnCount++;
	}
	
	public void reset()
	{
		pawnCount = 4;
	}
	
	public int getCount()
	{
		return pawnCount;
	}
}
