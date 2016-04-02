package pathfinding;

import java.util.List;

public class Path {
	private List<Node> nodes;
	private double cost;
	private double calculationTime;
	
	public Path(List<Node> nodes, double cost, double calculationTime)
	{
		this.nodes = nodes;
		this.cost = cost;
		this.calculationTime = calculationTime;
	}
	
	public List<Node> getNodes()
	{
		return nodes;
	}
	
	public double getCost()
	{
		return cost;
	}
	
	public double getCalculationTime()
	{
		return calculationTime;
	}
}
