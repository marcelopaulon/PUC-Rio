package pathfinding;

import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.PriorityQueue;

import map.GameMap;
import map.MapPanel;
import mapcell.MapCell;
import program.Program;

/**
 * Implementa o algoritmo A&#42
 *
 */
public class AStar {
	private final Map<Node, Double> gScore = new HashMap<Node, Double>();
	private final Map<Node, Double> fScore = new HashMap<Node, Double>();
	
	private List<WarPlaneInfo> warplaneInfo;
	private Hashtable<Integer, Integer> enemyBaseDifficulty;
	private int currentBase;
	
	/**
	 * Construtor de AStar
	 * <p><b>AStar:</b> implementa o algoritmo A&#42</p>
	 * @param warplaneInfo Lista contendo informações sobre as naves
	 * @param enemyBaseDifficulty Hashtable contendo informações sobre as bases inimigas
	 */
	public AStar(List<WarPlaneInfo> warplaneInfo, Hashtable<Integer, Integer> enemyBaseDifficulty)
	{
		this.warplaneInfo = warplaneInfo;
		this.enemyBaseDifficulty = enemyBaseDifficulty;
	}
	
	/**
	 * Pega o custo de uma node em fscore (gscore + heurística)
	 * @param node Nó de onde será pego o custo
	 * @return Fscore do nó
	 */
	private double getFCost(Node node)
	{
		return fScore.get(node);
	}
	
	/**
	 * "Ahm? Acho que não é usado" - Autor do método
	 * <p>TODO: Revisar este javadoc. </p>
	 * @param map GameMap do qual se deseja obter o custo
	 * @param fromNode Node inicial
	 * @param toNode Node final
	 * @return Custo de node ou dificuldade da enemy base dividido pelo poder de fogo da nave atacante
	 */
	private double getTraversalCost(GameMap map, Node fromNode, Node toNode)
	{
		if(toNode.CellType == MapCell.Cells.ENEMYBASE)
		{
			// Cost: enemyBaseDifficulty/sum(firepower)
			int enemyBaseDifficultyCost = enemyBaseDifficulty.get(currentBase);
	        
	        int idx = 0;
			while(warplaneInfo.get(idx).getEnergy() == 0)
			{
				idx++;
			}
	        
	        double firepower = warplaneInfo.get(idx).getFirepower(); 
	        return enemyBaseDifficultyCost/firepower;
		}
		else
		{
			return toNode.getCost();
		}
	}
	
	/**
	 * Compara dois nós
	 *
	 */
	private class NodeComparator implements Comparator<Node> {
		/**
		 * Compara o fcost de dois nós
		 */
	  public int compare(Node node1, Node node2) {
	    return Double.compare(getFCost(node1), getFCost(node2)); 
	  }
	}
	
	/**
	 * Processa o AStar no mapa, encontrando o caminho ótimo
	 * <p>Quando não especificado, assume-se que noRender é false</p>
	 * @param map Mapa onde o AStar será executado
	 * @param mapPanel Painel do mapa onde aparecerá o caminho traçado pelo findPath
	 * @return Path encontrado ou <b>null</b> se não caminho foi encontrado
	 * @see AStar#findPath(GameMap, MapPanel, boolean)
	 */
	public Path findPath(GameMap map, MapPanel mapPanel)
	{
		return findPath(map, mapPanel, false);
	}
	
	/**
	 * Processa o AStar no mapa, encontrando o caminho ótimo
	 * @param map Mapa onde o AStar será executado
	 * @param mapPanel Painel do mapa onde aparecerá o caminho traçado pelo findPath
	 * @param noRender TODO: Comentar. Não entendi o que o parâmetro faz. Comente seu código, Marcelo. 
	 * @return Path encontrado ou <b>null</b> se não caminho foi encontrado
	 * @see AStar#findPath(GameMap, MapPanel)
	 */
	public Path findPath(GameMap map, MapPanel mapPanel, boolean noRender) {
		currentBase = 1;
		warplaneInfo.forEach((warplane) -> warplane.setEnergy(5));
		HashSet<Node> visited = new HashSet<Node>();
		Node startNode = new Node(map.startX, map.startY, MapCell.Cells.START);
		Node endNode = new Node(map.endX, map.endY, MapCell.Cells.END);
		PriorityQueue<Node> queue = new PriorityQueue<Node>(1000, new NodeComparator());
		List<Node> route = new LinkedList<Node>();
		Map<Node, Node> pathMap = new HashMap<Node, Node>();
		
		gScore.clear();
		fScore.clear();
		
		long startTime = System.currentTimeMillis();
		
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
				    Thread.sleep(8);
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
					
					if(inQueue)
					{
						queue.remove(neighbor);
					}
					
					queue.offer(neighbor);
					if(neighbor.CellType == MapCell.Cells.ENEMYBASE)
					{
						currentBase++;
						
						int idx = 0;
						while(warplaneInfo.get(idx).getEnergy() == 0)
						{
							idx++;
						}
						
						warplaneInfo.get(idx).setEnergy(warplaneInfo.get(idx).getEnergy() - 1);
						
						if(noRender == false)
						{
							Program.getInstance().refreshWarPlanesEnergy();
						}
					}
					pathMap.put(neighbor, curNode);
				}
			}
		}
		
		System.out.println("Não encontrado!");
		return null;
	}
}
