package pathfinding;

import java.util.List;

public class Path {
	private List<Node> nodes;
	private double cost;
	
	public Path(List<Node> nodes, double cost)
	{
		this.nodes = nodes;
		this.cost = cost;
	}
	
	public List<Node> getNodes()
	{
		return nodes;
	}
	
	public double getCost()
	{
		return cost;
	}
}
