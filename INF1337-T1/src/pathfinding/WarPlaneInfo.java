package pathfinding;

/**
 * Contém as informações de uma nave (nome, poder de fogo e energia)
 *
 */
public class WarPlaneInfo
{
	private String name;
	private Double firepower;
	private Integer energy;
	
	/**
	 * Construtor de WarPlaneInfo. A energia da nave é sempre 5.
	 * <p><b>WarPlaneInfo:</b> contém as informações de uma nave (nome, poder de fogo e energia)</p>
	 * @param name Nome da nave
	 * @param firepower Poder de fogo da nave
	 * * @param energy War plane energy
	 */
	public WarPlaneInfo(String name, Double firepower, Integer energy)
	{
		this.name = name;
		this.firepower = firepower;
		this.energy = energy;
	}
	
	/**
	 * Construtor de WarPlaneInfo. A energia da nave é sempre 5.
	 * <p><b>WarPlaneInfo:</b> contém as informações de uma nave (nome, poder de fogo e energia)</p>
	 * @param name Nome da nave
	 * @param firepower Poder de fogo da nave
	 */
	public WarPlaneInfo(String name, Double firepower)
	{
		this.name = name;
		this.firepower = firepower;
		this.energy = 5;
	}
	
	/**
	 * Pega o nome da nave
	 * @return String contendo o nome da nave
	 */
	public String getName()
	{
		return name;
	}
	
	/**
	 * Pega o poder de fogo da nave
	 * @return Poder de fogo da nave
	 */
	public Double getFirepower()
	{
		return firepower;
	}
	
	/**
	 * Pega a energia atual da nave
	 * @return Energia da nave
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
	 * Modifica o poder de fogo da nave
	 * @param value Novo poder de fogo da nave
	 */
	public void setFirepower(double value)
	{
		firepower = value;
	}
	
}