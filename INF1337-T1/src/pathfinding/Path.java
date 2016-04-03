package pathfinding;

import java.util.List;

/**
 * Caminho percorrido pelo algoritmo
 *
 */
public class Path {
	private List<Node> nodes;
	private double cost;
	private double calculationTime;
	
	/**
	 * Construtor de Path
	 * <p><b>Path:</b> caminho percorrido pelo algoritmo</p>
	 * @param nodes Lista de nós que o caminho percorre
	 * @param cost Custo total do caminho
	 * @param calculationTime Tempo que o algoritmo levou para encontrar este caminho
	 */
	public Path(List<Node> nodes, double cost, double calculationTime)
	{
		this.nodes = nodes;
		this.cost = cost;
		this.calculationTime = calculationTime;
	}
	
	/**
	 * Pega os nós do caminho
	 * @return Lista de nós do caminho
	 */
	public List<Node> getNodes()
	{
		return nodes;
	}
	
	/**
	 * Pega o custo do caminho
	 * @return Custo total do caminho
	 */
	public double getCost()
	{
		return cost;
	}
	
	/**
	 * Pega o tempo que se levou para calcular o caminho
	 * @return Tempo que o caminho levou para ser calculado
	 */
	public double getCalculationTime()
	{
		return calculationTime;
	}
}
