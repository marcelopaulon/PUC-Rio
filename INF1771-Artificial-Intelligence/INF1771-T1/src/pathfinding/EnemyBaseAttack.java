package pathfinding;

import java.util.List;

/**
 * Enemy base attack settings
 *
 */
public class EnemyBaseAttack
{
	/**
	 * Cost of attacking this base
	 */
	private double cost;
	
	/**
	 * War planes (indexes) used to attack this base
	 */
	private List<Integer> warplanes;
	
	/**
	 * Constructor
	 * <p><b>EnemyBaseAttack:</b> enemy base attack settings</p>
	 * @param cost Cost of attacking this base
	 * @param warplanes War planes (indexes) used to attack this base
	 */
	public EnemyBaseAttack(double cost, List<Integer> warplanes)
	{
		this.cost = cost;
		this.warplanes = warplanes;
	}
	
	/**
	 * Gets the enemy base attack cost
	 * @return Enemy base attack cost
	 */
	public double getCost()
	{
		return cost;
	}
	
	/**
	 * Gets the war planes used to destroy this base
	 * @return War planes used to destroy this base
	 */
	public List<Integer> getWarplanes()
	{
		return warplanes;
	}
}