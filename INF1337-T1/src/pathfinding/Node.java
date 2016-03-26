package pathfinding;

import mapcell.MapCell;

public class Node {
	public int X;
	public int Y;
	public MapCell.Cells CellType;
	
	public Node(int x, int y, MapCell.Cells cellType)
	{
		X = x;
		Y = y;
		CellType = cellType;
	}
	
	public double getHeuristic(Node endNode)
	{
		// Manhattan distance
		return Math.abs(X - endNode.X) + Math.abs(Y - endNode.Y);
	}
	
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