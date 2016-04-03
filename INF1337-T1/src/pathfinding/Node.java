package pathfinding;

import mapcell.MapCell;

/**
 * N� representando uma c�lula do mapa e seu tipo de tile
 *
 */
public class Node {
	/**
	 * Coordenada X da c�lula
	 */
	public int X;
	/**
	 * Coordenada Y da c�lula
	 */
	public int Y;
	/**
	 * Tipo de tile presente na c�lula
	 */
	public MapCell.Cells CellType;
	
	/**
	 * Construtor de Node
	 * <p><b>Node:</b> n� representando uma c�lula do mapa e seu tipo de tile</p>
	 * @param x Coordenada X da c�lula
	 * @param y Coordenada Y da c�lula
	 * @param cellType Tipo de tile presente na c�lula
	 */
	public Node(int x, int y, MapCell.Cells cellType)
	{
		X = x;
		Y = y;
		CellType = cellType;
	}
	
	/**
	 * Calcula o valor de acordo com a heur�stica utilizada para uma c�lula
	 * @param endNode C�lula final para a qual se calcular� a heur�stica a partir da c�lula atual
	 * @return Valor determinado pelo c�lculo da fun��o heur�stica
	 */
	public double getHeuristic(Node endNode)
	{
		// Manhattan distance
		return Math.abs(X - endNode.X) + Math.abs(Y - endNode.Y);
	}
	
	/**
	 * Pega o custo associado ao tile deste node
	 * @return Custo referente ao tipo de tile deste node
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