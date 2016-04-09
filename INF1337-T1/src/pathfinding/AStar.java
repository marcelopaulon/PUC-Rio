package pathfinding;

import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.PriorityQueue;

import map.GameMap;
import map.MapPanel;
import mapcell.MapCell;
import program.PlanesPanel;
import program.Program;

/**
 * Implementa o algoritmo A&#42
 *
 */
public class AStar {
	private final Map<Node, Double> gScore = new HashMap<Node, Double>();
	private final Map<Node, Double> fScore = new HashMap<Node, Double>();
	
	/**
	 * Construtor de AStar
	 * <p><b>AStar:</b> implementa o algoritmo A&#42</p>
	 */
	public AStar()
	{
		
	}
	
	/**
	 * Pega o custo de uma node em fscore (gscore + heur�stica)
	 * @param node N� de onde ser� pego o custo
	 * @return Fscore do n�
	 */
	private double getFCost(Node node)
	{
		return fScore.get(node);
	}
	
	/**
	 * "Ahm? Acho que n�o � usado" - Autor do m�todo
	 * <p>TODO: Revisar este javadoc. </p>
	 * @param map GameMap do qual se deseja obter o custo
	 * @param fromNode Node inicial
	 * @param toNode Node final
	 * @return Custo de node ou dificuldade da enemy base dividido pelo poder de fogo da nave atacante
	 */
	private double getTraversalCost(GameMap map, Node fromNode, Node toNode)
	{
		double cost;
		
		if(toNode.CellType == MapCell.Cells.ENEMYBASE)
		{
			cost = AttackStrategy.bases.get(toNode.getBaseOrder()).getCost();
		}
		else
		{
			cost = toNode.getCost();
		}
		
		return cost;
	}
	
	/**
	 * Compara dois n�s
	 *
	 */
	private class NodeComparator implements Comparator<Node> {
		/**
		 * Compara o fcost de dois n�s
		 */
	  public int compare(Node node1, Node node2) {
	    return Double.compare(getFCost(node1), getFCost(node2)); 
	  }
	}
	
	/**
	 * Processa o AStar no mapa, encontrando o caminho �timo
	 * @param map Mapa onde o AStar ser� executado
	 * @param mapPanel Painel do mapa onde aparecer� o caminho tra�ado pelo findPath
	 * @param planesPanel Painel onde � listada a energia restante de cada avi�o
	 * @param noRender Specifies if the path should be rendered on the UI. 
	 * @return Path encontrado ou <b>null</b> se n�o caminho foi encontrado
	 * @see AStar#findPath(GameMap, MapPanel)
	 */
	public Path findPath(GameMap map, MapPanel mapPanel, PlanesPanel planesPanel, boolean noRender) {
		HashSet<Node> visited = new HashSet<Node>();
		Node startNode = new Node(map.startX, map.startY, MapCell.Cells.START);
		Node endNode = new Node(map.endX, map.endY, MapCell.Cells.END);
		PriorityQueue<Node> queue = new PriorityQueue<Node>(1000, new NodeComparator());
		List<Node> route = new LinkedList<Node>();
		Map<Node, Node> pathMap = new HashMap<Node, Node>();
				
		gScore.clear();
		fScore.clear();
		
		long startTime = System.currentTimeMillis();
		
		AttackStrategy.Refresh();
		
		startNode.setEstate(Program.getInstance().getWarPlaneList());
		
		gScore.put(startNode, 0.0);
		fScore.put(startNode, startNode.getHeuristic(endNode));
		queue.offer(startNode);
		
		while (!queue.isEmpty()) {
			Node curNode = queue.poll();
			
			if(curNode.CellType != MapCell.Cells.START && curNode.CellType != MapCell.Cells.END)
			{
				map.pathData[curNode.Y - 1][curNode.X - 1] = 'X';
			}
			
			if(noRender == false)
			{
				Program.getInstance().setCost(gScore.get(curNode));
				mapPanel.repaint();
				
				try {
				    Thread.sleep(6);
				} catch(InterruptedException ex) {
				    Thread.currentThread().interrupt();
				}
			}
			
			if (curNode.equals(endNode)) {
			    long stopTime = System.currentTimeMillis();
			    long elapsedTime = stopTime - startTime;
			     
				double score = gScore.get(curNode);
				while (curNode != null) {
					route.add(0, curNode);
					curNode = pathMap.get(curNode);
				}
				
				return new Path(route, score, elapsedTime);
			}
			
			visited.add(curNode);

			Node neighbors[] = map.getNeighbors(curNode.Y, curNode.X);

			for (Node neighbor : neighbors) {
				if(neighbor == null || visited.contains(neighbor))
				{
					continue;
				}
				
				double g_x = gScore.get(curNode) + getTraversalCost(map, curNode, neighbor);
				
				boolean inQueue = queue.contains(neighbor);
				if(!inQueue || g_x < gScore.get(neighbor))
				{
					gScore.put(neighbor, g_x);
					fScore.put(neighbor, g_x + neighbor.getHeuristic(endNode));
										
					neighbor.setEstate(curNode.getWarplaneInfo());
					
					if(neighbor.CellType == MapCell.Cells.ENEMYBASE)
					{
						List<Integer> warplanes = AttackStrategy.bases.get(neighbor.getBaseOrder()).getWarplanes();
						
						warplanes.forEach((x) -> neighbor.getWarplaneInfo().get(x).decrementEnergy());
						
						if(noRender == false)
						{
							planesPanel.UpdateHealthBars(neighbor.getWarplaneInfo());
						}
					}
					
					if(inQueue)
					{
						queue.remove(neighbor);
					}
					
					queue.offer(neighbor);
					pathMap.put(neighbor, curNode);
				}
			}
		}
		
		System.out.println("N�o encontrado!");
		return null;
	}
}
