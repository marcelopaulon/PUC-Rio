package pathfinding;

import java.util.List;

public class EnemyBaseAttack
{
	private double cost;
	private List<Integer> warplanes;
	
	public EnemyBaseAttack(double cost, List<Integer> warplanes)
	{
		this.cost = cost;
		this.warplanes = warplanes;
	}
	
	public double getCost()
	{
		return cost;
	}
	
	public List<Integer> getWarplanes()
	{
		return warplanes;
	}
}