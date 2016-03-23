package pathfinding;

import java.util.HashSet;
import java.util.LinkedList;
import java.util.Queue;

import map.Map;
import map.MapPanel;

public class AStar {
	public void FindPath(Map map, MapPanel mapPanel) {
		HashSet<Node> visited = new HashSet<Node>();
		Node startNode = new Node(map.startX, map.startY);
		Node endNode = new Node(map.endX, map.endY);
		
		Queue<Node> queue = new LinkedList<Node>();
		queue.add(startNode);
		visited.add(startNode);

		// TODO: Criar árvore

		while (queue.size() > 0) {
			Node curNode = queue.poll();
			map.pathData[curNode.Y - 1][curNode.X - 1] = 'X';
			mapPanel.repaint();
			
			try {
			    Thread.sleep(10);
			} catch(InterruptedException ex) {
			    Thread.currentThread().interrupt();
			}
			
			if (curNode.equals(endNode)) {
				// TODO: Renderizar solução
				System.out.println("Encontrado!");
				return;
			}

			Node neighbors[] = map.getNeighbors(curNode.Y, curNode.X);

			for (Node neighbor : neighbors) {
				if (neighbor != null && !visited.contains(neighbor)) {
					// double g_x = actual_distance + map.getValue(neighbor.Y, neighbor.X);
					queue.add(neighbor);
					visited.add(neighbor);
				}
			}
		}
		
		System.out.println("Não encontrado!");
	}
}
