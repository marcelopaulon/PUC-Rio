package utils;

public class Coordinate {
	
	private double x;
	private double y;
	
	public Coordinate(double x, double y)
	{
		this.x = x;
		this.y = y;
	}
	
	public double getX()
	{
		return x;
	}
	
	public double getY()
	{
		return y;
	}
	
	public void setX(double x)
	{
		this.x = x;
	}
	
	public void setY(double y)
	{
		this.y = y;
	}
	
	@Override
    public int hashCode() {
		long bits = java.lang.Double.doubleToLongBits(getX());
	    bits ^= java.lang.Double.doubleToLongBits(getY()) * 31;
	    return (((int) bits) ^ ((int) (bits >> 32)));
    }
	
	@Override
    public boolean equals(Object obj) {
       if (!(obj instanceof Coordinate))
            return false;
        if (obj == this)
            return true;

        Coordinate coordinate = (Coordinate) obj;

        if(coordinate.x == this.x && coordinate.y == this.y) return true;
        
        return false;
    }
}
