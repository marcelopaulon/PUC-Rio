package boardInfo;

public class Pocket {
	private int pawnCount;
	
	public Pocket()
	{
		reset();
	}
	
	public void addPawn()
	{
		pawnCount++;
	}
	
	public void reset()
	{
		pawnCount = 0;
	}
	
	public int getCount()
	{
		return pawnCount;
	}
}