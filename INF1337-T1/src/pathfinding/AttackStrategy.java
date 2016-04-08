package pathfinding;

import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;

import program.Program;

public class AttackStrategy
{
	public static Hashtable<Integer, EnemyBaseAttack> bases = new Hashtable<Integer, EnemyBaseAttack>();
	
	public static void Refresh()
	{
		bases.clear();
		
		Hashtable<Integer, Integer> enemyBaseDifficulty = Program.getInstance().getEnemyBaseList();
		List<WarPlaneInfo> listWarPlaneFirepower = Program.getInstance().getWarPlaneList();
		
		for(int i = 1; i < 12; i++)
		{
			double cost;
			List<Integer> warplanes = new ArrayList<Integer>();
			cost = enemyBaseDifficulty.get(i);
			switch(i)
			{
				case 1:
			    case 2:
			    case 3:
			    case 4:
			    case 5:
			    	cost /= (listWarPlaneFirepower.get(3).getFirepower()+listWarPlaneFirepower.get(4).getFirepower());
			    	warplanes.add(3);
			    	warplanes.add(4);
			    	break;
			    case 6:
			    case 7:
			    	cost /= (listWarPlaneFirepower.get(1).getFirepower()+listWarPlaneFirepower.get(2).getFirepower());
			    	warplanes.add(1);
			    	warplanes.add(2);
			    	break;
			    case 8:
			    case 9:
			    case 10:
			    	cost /= (listWarPlaneFirepower.get(0).getFirepower()+listWarPlaneFirepower.get(1).getFirepower()+listWarPlaneFirepower.get(2).getFirepower());
			    	warplanes.add(0);
			    	warplanes.add(1);
			    	warplanes.add(2);
			    	break;
			    case 11:
			    	cost /= (listWarPlaneFirepower.get(0).getFirepower());
			    	warplanes.add(0);
			        break;
			}
			
			EnemyBaseAttack attack = new EnemyBaseAttack(cost, warplanes);
			bases.put(i, attack);
		}
	}
}