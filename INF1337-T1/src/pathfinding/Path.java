package pathfinding;

import java.util.List;

/**
 * Path performed by algorithm
 *
 */
public class Path {
	private List<Node> nodes;
	private double cost;
	private double calculationTime;
	
	/**
	 * Path constructor
	 * <p><b>Path:</b> Path performed by algorithm</p>
	 * @param nodes Node list Path travels by
	 * @param cost Path's total cost
	 * @param calculationTime Time algorithm took to calculate this Path
	 */
	public Path(List<Node> nodes, double cost, double calculationTime)
	{
		this.nodes = nodes;
		this.cost = cost;
		this.calculationTime = calculationTime;
	}
	
	/**
	 * Gets the Path's nodes
	 * @return list of Path's nodes
	 */
	public List<Node> getNodes()
	{
		return nodes;
	}
	
	/**
	 * Gets Path's cost
	 * @return Path's total cost
	 */
	public double getCost()
	{
		return cost;
	}
	
	/**
	 * Gets time algorithm took to calculate this Path
	 * @return time algorithm took to calculate this Path
	 */
	public double getCalculationTime()
	{
		return calculationTime;
	}
}
