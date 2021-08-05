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
 * Implements the A* algorithm
 *
 */
public class AStar {
	private final Map<Node, Double> gScore = new HashMap<Node, Double>();
	private final Map<Node, Double> fScore = new HashMap<Node, Double>();
	
	/**
	 * AStar constructor
	 * <p><b>AStar:</b> Implements the A* algorithm</p>
	 */
	public AStar()
	{
		
	}
	
	/**
	 * Gets the cost of an fscore node (gscore + heuristic)
	 * @param node from where the cost is gotten
	 * @return Node fscore
	 */
	private double getFCost(Node node)
	{
		return fScore.get(node);
	}
	
	/**
	 * "Ahm? Acho que não é usado" - Autor do método
	 * <p>TODO: Revisar este javadoc. </p>
	 * @param map from which the cost is desired to be gotten
	 * @param fromNode Initial node
	 * @param toNode Final node
	 * @return Node cost or enemy base difficulty divided by attacking ship's firepower
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
	 * Compares two nodes
	 *
	 */
	private class NodeComparator implements Comparator<Node> {
		/**
		 * Compares fscore between two nodes
		 */
	  public int compare(Node node1, Node node2) {
	    return Double.compare(getFCost(node1), getFCost(node2)); 
	  }
	}
	
	/**
	 * Processes AStar on the map, finding the optimal path
	 * @param map where AStar is to be executed
	 * @param mapPanel where findPath will trace the path
	 * @param planesPanel Panel where each plane's remaining energy is listed
	 * @param noRender Specifies if the path should be rendered on the UI. 
	 * @return Path found or <b>null</b> if no path was found
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
		
		System.out.println("Não encontrado!");
		return null;
	}
}
