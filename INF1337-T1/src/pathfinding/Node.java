package pathfinding;

public class Node {
	public int X;
	public int Y;
	
	
	public Node(int x, int y)
	{
		X = x;
		Y = y;
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