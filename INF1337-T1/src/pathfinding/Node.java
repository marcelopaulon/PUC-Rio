package pathfinding;

import java.util.LinkedList;
import java.util.List;

import mapcell.MapCell;

/**
 * Node representing a map cell and its tile type
 *
 */
public class Node {
	/**
	 * Cell's X coordinate
	 */
	public int X;
	/**
	 * Cell's Y coordinate
	 */
	public int Y;
	/**
	 * tile type present in the cell
	 */
	public MapCell.Cells CellType;
	
	/**
	 * War plane info estate
	 * 
	 */
	private List<WarPlaneInfo> warplaneInfo_Estate;
	
	/**
	 * Order of the enemy base, not null if current cell is a enemy base cell
	 * 
	 */
	private Integer enemyBaseOrder = null;
	
	/**
	 * Node constructor for enemy base
	 * <p><b>Node:</b> represents a map cell and its tile type</p>
	 * @param x Cell's X coordinate
	 * @param y Cell's Y coordinate
	 * @param cellType Tile type present in the cell
	 * @param enemyBaseOrder
	 */
	public Node(int x, int y, MapCell.Cells cellType, int enemyBaseOrder)
	{
		this(x, y, cellType);
		this.enemyBaseOrder = enemyBaseOrder;
	}
	
	/**
	 * Node cosntructor
	 * <p><b>Node:</b> represents a map cell and its tile type</p>
	 * @param x Cell's X coordinate
	 * @param y Cell's Y coordinate
	 * @param cellType Tile type present in the cell
	 */
	public Node(int x, int y, MapCell.Cells cellType)
	{
		X = x;
		Y = y;
		CellType = cellType;
	}
	
	/**
	 * Gets the order of the enemy base
	 * @return Order of the enemy base
	 */
	public Integer getBaseOrder()
	{
		return enemyBaseOrder;
	}
	
	/**
	 * Sets the node estate
	 * 
	 */
	public void setEstate(List<WarPlaneInfo> warplaneInfo)
	{
		warplaneInfo_Estate = new LinkedList<WarPlaneInfo>();
		warplaneInfo.forEach((x) -> warplaneInfo_Estate.add(new WarPlaneInfo(x.getName(), x.getFirepower(), x.getEnergy())));
	}
	
	/**
	 * Gets the war plane info
	 * @return War plane info
	 */
	public List<WarPlaneInfo> getWarplaneInfo()
	{
		return warplaneInfo_Estate;
	}
	
	/**
	 * Calculates value according to heuristic used for a cell
	 * @param endNode for which the heuristic will be calculated from current cell
	 * @return Value determined by the heuristic function's calculation
	 */
	public double getHeuristic(Node endNode)
	{
		// Manhattan distance
		return Math.abs(X - endNode.X) + Math.abs(Y - endNode.Y);
	}
	
	/**
	 * Gets cost associated to node's tile
	 * @return Cost referring to node's tile's type
	 */
	public double getCost()
	{
		return CellType.getCost();
	}
	
	@Override
    public boolean equals(Object obj) {
        if (!(obj instanceof Node))
            return false;
        Node n = (Node) obj;
        return (this.X == n.X && this.Y == n.Y);
    }
	
	@Override
	public int hashCode() {
	    return Long.valueOf((((long) X) << 32) | Y).hashCode();
	}
}