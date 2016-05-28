package logic;

public class Coordinate {
	public int x;
	public int y;
	
	public Coordinate (int x, int y)
	{
		this.x = x;
		this.y = y;
	}
	
	@Override
    public boolean equals(Object obj) {
        if (!(obj instanceof Coordinate))
            return false;
        Coordinate c = (Coordinate) obj;
        return (this.x == c.x && this.y == c.y);
    }
	
	@Override
	public int hashCode() {
	    return Long.valueOf((((long) x) << 32) | y).hashCode();
	}
}
