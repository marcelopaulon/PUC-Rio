package pathfinding;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

import map.Map;

public class AStar {
	public void FindPath(Map map) {
		List<Node> visited = new ArrayList<Node>();
		Node startNode = new Node(map.startX, map.startY);
		Node endNode = new Node(map.endX, map.endY);
		
		Queue<Node> queue = new LinkedList<Node>();
		queue.add(startNode);
		visited.add(startNode);

		// TODO: Criar árvore

		while (queue.size() > 0) {
			Node curNode = queue.poll();
			
			if (curNode.X == endNode.X && curNode.Y == endNode.Y) {
				// TODO: Renderizar solução
				System.out.println("Encontrado!");
				return;
			}

			Node neighbors[] = map.getNeighbors(curNode.Y, curNode.X);

			for (Node neighbor : neighbors) {
				if (neighbor != null && hasNode(visited, neighbor) == false) {
					// double g_x = actual_distance + map.getValue(neighbor.Y,
					// neighbor.X);
					queue.add(neighbor);
					visited.add(neighbor);
				}
			}
		}
		
		System.out.println("Não encontrado!");
	}

	private boolean hasNode(Collection<Node> list, Node node) {
		for (Node n : list) {
			if (n != null && n.X == node.X && n.Y == node.Y) {
				return true;
			}
		}
		return false;
	}
}
