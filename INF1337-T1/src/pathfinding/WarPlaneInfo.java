package pathfinding;

/**
 * Contains plane info (name, firepower & energy)
 *
 */
public class WarPlaneInfo
{
	private String name;
	private Double firepower;
	private Integer energy;
	
	/**
	 * WarPlaneInfo constructor: Plane energy is always 5.
	 * <p><b>WarPlaneInfo:</b> Contains plane info (name, firepower & energy)</p>
	 * @param name Plane's name
	 * @param firepower Plane's firepower
	 * * @param energy Plane's energy
	 */
	public WarPlaneInfo(String name, Double firepower, Integer energy)
	{
		this.name = name;
		this.firepower = firepower;
		this.energy = energy;
	}
	
	/**
	 * CWarPlaneInfo constructor: Plane energy is always 5.
	 * <p><b>WarPlaneInfo:</b> Contains plane info (name, firepower & energy)</p>
	 * @param name Plane's name
	 * @param firepower Plane's firepower
	 */
	public WarPlaneInfo(String name, Double firepower)
	{
		this.name = name;
		this.firepower = firepower;
		this.energy = 5;
	}
	
	/**
	 * Gets plane's name
	 * @return String containing plane's name
	 */
	public String getName()
	{
		return name;
	}
	
	/**
	 * Gets plane's firepower
	 * @return plane's firepower
	 */
	public Double getFirepower()
	{
		return firepower;
	}
	
	/**
	 * Gets plane's current energy
	 * @return plane's energy
	 */
	public int getEnergy()
	{
		return energy;
	}
	
	/**
	 * Decrements the war plane remaining energy 
	 */
	public void decrementEnergy()
	{
		energy--;
	}
	
	/**
	 * Resets the war plane remaining energy 
	 */
	public void resetEnergy()
	{
		energy = 5;
	}
	
	/**
	 * Modifies plane's firepower
	 * @param value Plane's new firepower
	 */
	public void setFirepower(double value)
	{
		firepower = value;
	}
	
}