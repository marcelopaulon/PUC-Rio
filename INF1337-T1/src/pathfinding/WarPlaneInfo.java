package pathfinding;

public class WarPlaneInfo
{
	private String name;
	private Double firepower;
	private Integer energy;
	
	public WarPlaneInfo(String name, Double firepower)
	{
		this.name = name;
		this.firepower = firepower;
		this.energy = 5;
	}
	
	public String getName()
	{
		return name;
	}
	
	public Double getFirepower()
	{
		return firepower;
	}
	
	public int getEnergy()
	{
		return energy;
	}
	
	public void setEnergy(int value)
	{
		energy = value;
	}
	
	public void setFirepower(double value)
	{
		this.firepower = value;
	}
}