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

public class AStar {
	private final Map<Node, Double> gScore = new HashMap<Node, Double>();
	private final Map<Node, Double> fScore = new HashMap<Node, Double>();
	
	private double getFCost(Node node)
	{
		return fScore.get(node);
	}
	
	private double getTraversalCost(GameMap map, Node fromNode, Node toNode)
	{
		return toNode.getCost();
	}
	
	private class NodeComparator implements Comparator<Node> {
	  public int compare(Node node1, Node node2) {
	    return Double.compare(getFCost(node1), getFCost(node2)); 
	  }
	}
	
	public List<Node> FindPath(GameMap map, MapPanel mapPanel) {
		HashSet<Node> visited = new HashSet<Node>();
		Node startNode = new Node(map.startX, map.startY, MapCell.Cells.START);
		Node endNode = new Node(map.endX, map.endY, MapCell.Cells.END);
		PriorityQueue<Node> queue = new PriorityQueue<Node>(1000, new NodeComparator());
		List<Node> route = new LinkedList<Node>();
		Map<Node, Node> pathMap = new HashMap<Node, Node>();
		gScore.put(startNode, 0.0);
		fScore.put(startNode, startNode.getHeuristic(endNode));
		queue.offer(startNode);
		
		while (!queue.isEmpty()) {
			Node curNode = queue.poll();
			map.pathData[curNode.Y - 1][curNode.X - 1] = 'X';
			mapPanel.repaint();
			
			try {
			    Thread.sleep(1);
			} catch(InterruptedException ex) {
			    Thread.currentThread().interrupt();
			}
			
			if (curNode.equals(endNode)) {
				// TODO: Renderizar solu��o
				System.out.println("Encontrado!");
				while (curNode != null) {
					route.add(0, curNode);
					curNode = pathMap.get(curNode);
				}
				return route;
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
