package pathfinding;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

import map.Map;

public class AStar {
	public void FindPath(Map map)
	{
		List<Node> visited = new ArrayList<Node>();
		Node startNode = new Node(map.startX, map.startY);
		Node endNode = new Node(map.endX, map.endY);
		Node curNode;
		Queue queue = new LinkedList<Node>();
		queue.add(startNode);
		
		// TODO: Criar árvore
		
		while(queue.size() > 0)
		{
			curNode = (Node) queue.poll();
			visited.add(curNode);
			
			if(curNode.X == endNode.X && curNode.Y == endNode.Y)
			{
				// TODO: Renderizar solução
				
				return;
			}
			
			Node neighbors[] = map.getNeighbors(curNode.X, curNode.Y);
			
			for(Node neighbor : neighbors)
			{
				if(!visited.contains(neighbor)) // TODO: Alterar para buscar na lista por valor
				{
					//double g_x = actual_distance + map.getValue(neighbor.Y, neighbor.X);
					queue.add(neighbor);
				}
			}
		}
	}
}
