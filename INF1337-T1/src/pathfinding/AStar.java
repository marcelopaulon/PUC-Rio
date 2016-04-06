package pathfinding;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
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
	private int rankingCurrentEnemyBase;
	private double totalPlaneFirePower = 0;
	private double battleCost;
	private Hashtable<Integer, Integer> enemyBaseDifficulty;
	private ArrayList<Map.Entry<?, Integer>> sortedListEnemysBasesDifficulty;
	private ArrayList<Double> listWarPlaneFirepower = new ArrayList<Double>(5);
	
	/**
	 * Construtor de AStar
	 * <p><b>AStar:</b> implementa o algoritmo A&#42</p>
	 * @param warplaneInfo Lista contendo informações sobre as naves
	 * @param enemyBaseDifficulty Hashtable contendo informações sobre as bases inimigas
	 */
	public AStar(Hashtable<Integer, Integer> enemyBaseDifficulty)
	{
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
			
			//Pega a dificuldade da base corrente
			int enemyBaseDifficultyCost = enemyBaseDifficulty.get(toNode.getBaseOrder());
			
			/*
			 * Ordena e joga em um Arraylist. metodo sortValue converte 
			 * de hashtable pra arraylist e ordena em ordem crescente
			 *  
			 */
			sortedListEnemysBasesDifficulty = sortValue(enemyBaseDifficulty);
			
			int indexCount = 0;
			
			/*
			 * procura dentro de sortedListEnemysBasesDifficulty a dificuldade do base corrente.
			 * enquanto isso vai pegando o indice da posição da tabela. quando acha, o indice da 
			 * posição será a posição do ranking de dificuldade da base. O ranking será usado pra 
			 * decidir a combinação de naves a atacar a base 
			 */
			for(Entry<?, Integer> elementList : sortedListEnemysBasesDifficulty ){
				indexCount++;
				if(elementList.getValue() == enemyBaseDifficultyCost){
					
					rankingCurrentEnemyBase = indexCount;
					
				}
			}
			
			//adiciona os firepowers das naves dentro de  listWarPlaneFirepower
			for(int i=0;i<5;i++){
				listWarPlaneFirepower.add(fromNode.getWarplaneInfo().get(i).getFirepower());
			}
						
			
			/*
			 * Obs: nave de menor poder de fogo = a5 e a de maior a1
			 * 
			 *  Tabela Ranking-combinação nave adequada 
			 *     ranking1 | (a4,a5) 
			 *     ranking2	| (a4,a5)
			 *     ranking3 | (a4,a5)
			 *     ranking4	| (a4,a5)
			 *     ranking5	| (a4,a5)
			 *  	ranking6| (a2,a3)
			 *     ranking7	| (a2,a3)
			 *  	ranking8| (a1,a2,a3)
			 *  	ranking9| (a1,a2,a3)
			 *  	ranking10| (a1,a2,a3)
			 *  	ranking11| (a1,a2,a3)
			 *	  
			 */
			 
			//implementando a estratégia de ataque
			switch (rankingCurrentEnemyBase)
	        {
	            case 1:
	            	totalPlaneFirePower= listWarPlaneFirepower.get(3)+listWarPlaneFirepower.get(4);
	            	battleCost =  enemyBaseDifficultyCost/totalPlaneFirePower;
	            	break;
	            case 2:
	            	totalPlaneFirePower= listWarPlaneFirepower.get(3)+listWarPlaneFirepower.get(4);
	            	battleCost = enemyBaseDifficultyCost/totalPlaneFirePower;
	            	break;
	            case 3:
	            	totalPlaneFirePower= listWarPlaneFirepower.get(3)+listWarPlaneFirepower.get(4);
	            	battleCost = enemyBaseDifficultyCost/totalPlaneFirePower;
	            	break;
	            case 4:
	            	totalPlaneFirePower= listWarPlaneFirepower.get(3)+listWarPlaneFirepower.get(4);
	            	battleCost = enemyBaseDifficultyCost/totalPlaneFirePower;
	            	break;
	            case 5:
	            	totalPlaneFirePower= listWarPlaneFirepower.get(3)+listWarPlaneFirepower.get(4);
	            	battleCost = enemyBaseDifficultyCost/totalPlaneFirePower;
	            	break;
	            case 6:
	            	totalPlaneFirePower= listWarPlaneFirepower.get(1)+listWarPlaneFirepower.get(2);
	            	battleCost = enemyBaseDifficultyCost/totalPlaneFirePower;
	            	break;
	            case 7:
	            	totalPlaneFirePower= listWarPlaneFirepower.get(1)+listWarPlaneFirepower.get(2);
	            	battleCost = enemyBaseDifficultyCost/totalPlaneFirePower;
	            	break;
	            case 8:
	            	totalPlaneFirePower= listWarPlaneFirepower.get(0)+listWarPlaneFirepower.get(1)+listWarPlaneFirepower.get(2);
	            	battleCost = enemyBaseDifficultyCost/totalPlaneFirePower;
	            	break;
	            case 9:
	            	totalPlaneFirePower= listWarPlaneFirepower.get(0)+listWarPlaneFirepower.get(1)+listWarPlaneFirepower.get(2);
	            	battleCost = enemyBaseDifficultyCost/totalPlaneFirePower;
	            	break;
	            case 10:
	            	totalPlaneFirePower= listWarPlaneFirepower.get(0)+listWarPlaneFirepower.get(1)+listWarPlaneFirepower.get(2);
	            	battleCost = enemyBaseDifficultyCost/totalPlaneFirePower;
	            	break;
	            case 11:
	            	totalPlaneFirePower= listWarPlaneFirepower.get(0);
	            	battleCost = enemyBaseDifficultyCost/totalPlaneFirePower;
	                break;
	        }

			return battleCost;
	        
		}
		else
		{
			return toNode.getCost();
		}
		
		//int enemyBaseDifficultyCost = enemyBaseDifficulty.get(currentBase);
		/*compara com a dificuldade das outras bases. dependendo da dificuldade da 
		 * base, escolher a combinação de nave adequada.
		 * 
		 * tem que fazer um for para ver qual o ranking de dificuldade da base: a de 
		 * menor dificuldade sera ranking 1 e a de maior 11
		 * 
		 * tem que fazer um for pra ver o poder de fogo das naves
		 * 
		 * Obs: nave de menor poder de fogo = a5 e a de maior a1
		 * 
		 *  Tabela Ranking-combinação nave adequada 
		 *     ranking1 | (a4,a5) 
		 *     ranking2	| (a4,a5)
		 *     ranking3 | (a4,a5)
		 *     ranking4	| (a4,a5)
		 *     ranking5	| (a4,a5)
		 *  	ranking6| (a2,a3)
		 *     ranking7	| (a2,a3)
		 *  	ranking8| (a1,a2,a3)
		 *  	ranking9| (a1,a2,a3)
		 *  	ranking10| (a1,a2,a3)
		 *  	ranking11| (a1,a2,a3)
		 *  
		 */
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
	 * @param map Mapa onde o AStar será executado
	 * @param mapPanel Painel do mapa onde aparecerá o caminho traçado pelo findPath
	 * @param planesPanel Painel onde é listada a energia restante de cada avião
	 * @param noRender Specifies if the path should be rendered on the UI. 
	 * @return Path encontrado ou <b>null</b> se não caminho foi encontrado
	 * @see AStar#findPath(GameMap, MapPanel)
	 */
	public Path findPath(GameMap map, MapPanel mapPanel, PlanesPanel planesPanel, boolean noRender) {
		HashSet<Node> visited = new HashSet<Node>();
		Node startNode = new Node(map.startX, map.startY, MapCell.Cells.START);
		Node endNode = new Node(map.endX, map.endY, MapCell.Cells.END);
		PriorityQueue<Node> queue = new PriorityQueue<Node>(1000, new NodeComparator());
		List<Node> route = new LinkedList<Node>();
		Map<Node, Node> pathMap = new HashMap<Node, Node>();
		
		//pega a lista com a tabela dos niveis de dificuldade das bases inimigas
		enemyBaseDifficulty = Program.getInstance().getEnemyBaseList();
		
		gScore.clear();
		fScore.clear();
		
		long startTime = System.currentTimeMillis();
		
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
						int idx = 0;
						while(neighbor.getWarplaneInfo().get(idx).getEnergy() == 0)
						{
							idx++;
						}
												
						neighbor.getWarplaneInfo().get(idx).decrementEnergy();
						planesPanel.UpdateHealthBars(neighbor.getWarplaneInfo());
						
						if(noRender == false)
						{
							Program.getInstance().refreshWarPlanesEnergy(neighbor.getWarplaneInfo());
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
	
	public static ArrayList<Map.Entry<?, Integer>> sortValue(Hashtable<?, Integer> t)
	{
	       //Transfer as List and sort it
	       ArrayList<Map.Entry<?, Integer>> l = new ArrayList<Entry<?, Integer>>(t.entrySet());
	       Collections.sort(l, new Comparator<Map.Entry<?, Integer>>(){

	         public int compare(Map.Entry<?, Integer> o1, Map.Entry<?, Integer> o2)
	         {
	            return o1.getValue().compareTo(o2.getValue());
	         }
	        });
	       
	       return l;
	    }
}
