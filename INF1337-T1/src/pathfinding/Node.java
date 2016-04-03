package pathfinding;

import mapcell.MapCell;

/**
 * Nó representando uma célula do mapa e seu tipo de tile
 *
 */
public class Node {
	/**
	 * Coordenada X da célula
	 */
	public int X;
	/**
	 * Coordenada Y da célula
	 */
	public int Y;
	/**
	 * Tipo de tile presente na célula
	 */
	public MapCell.Cells CellType;
	
	/**
	 * Construtor de Node
	 * <p><b>Node:</b> nó representando uma célula do mapa e seu tipo de tile</p>
	 * @param x Coordenada X da célula
	 * @param y Coordenada Y da célula
	 * @param cellType Tipo de tile presente na célula
	 */
	public Node(int x, int y, MapCell.Cells cellType)
	{
		X = x;
		Y = y;
		CellType = cellType;
	}
	
	/**
	 * Calcula o valor de acordo com a heurística utilizada para uma célula
	 * @param endNode Célula final para a qual se calculará a heurística a partir da célula atual
	 * @return Valor determinado pelo cálculo da função heurística
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