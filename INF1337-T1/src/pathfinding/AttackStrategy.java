package pathfinding;

import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;

import program.Program;
import program.Utils;

public class AttackStrategy
{
	public static Hashtable<Integer, EnemyBaseAttack> bases = new Hashtable<Integer, EnemyBaseAttack>();
	
	private static void disturb(char[] strategy)
	{
		// 55 spaces; 10% ~= 5 changes
		for(int i = 0; i < 5; i++)
		{
			int idx = Utils.randInt(0, 54);
			if(strategy[idx] == '1')
			{
				strategy[idx] = '0';
			}
			else
			{
				strategy[idx] = '1';
			}
		}
	}
	
	private static boolean validateStrategy(char[] strategy)
	{
		int sum = 0;
		int[] attacks = {0,0,0,0,0};
		
		for(int i = 0; i < 55; i++)
		{
			if(strategy[i] == '1')
			{
				attacks[i % 5]++;
				sum++;
			}
		}
		
		/* If sum of attacks equals to all of the 5 planes being destroyed, return false */
		if(sum > 24)
		{
			return false;
		}
		
		for(int i = 0; i < 5; i++)
		{
			/* If more than 5 attacks by a plane, return false */
			if(attacks[i] > 5)
			{
				return false;
			}
		}
		
		return true;
	}
	
	private static char[] genRandomAttackStrategy()
	{
		char[] strategy = new char[55];
		
		do
		{
			strategy = Utils.randString("01", 55).toCharArray();
		} while(validateStrategy(strategy) == false);
		
		return strategy;
	}
	
	private static double getCost(char[] strategy, Hashtable<Integer, Integer> enemyBaseDifficulty, List<WarPlaneInfo> listWarPlaneFirepower)
	{
		double cost = 0.0;
		
		for(int i = 1; i < 12; i++)
		{
			int difficulty = enemyBaseDifficulty.get(i);
			double firepowerSum = 0.0;
			
			for(int j = 1; j < 6; j++)
			{
				if(strategy[i*j - 1] == '1')
				{
					firepowerSum += listWarPlaneFirepower.get(j-1).getFirepower();
				}
			}
			
			cost += difficulty/firepowerSum;
		}
		
		return cost;
	}
	
	public static void Refresh()
	{
		bases.clear();
		
		Hashtable<Integer, Integer> enemyBaseDifficulty = Program.getInstance().getEnemyBaseList();
		List<WarPlaneInfo> listWarPlaneFirepower = Program.getInstance().getWarPlaneList();
		
        // Set initial temperature
        double temperature = 10000;

        // Cooling rate
        double coolingRate = 0.003;
        
		char[] strategy = genRandomAttackStrategy();

		while(temperature > 1)
		{
			// Generete a new strategy
			char[] newStrategy = strategy.clone();
			disturb(newStrategy);
			
			if(validateStrategy(newStrategy) == false)
			{
				continue;
			}
			
			if(getCost(strategy, enemyBaseDifficulty, listWarPlaneFirepower) > getCost(newStrategy, enemyBaseDifficulty, listWarPlaneFirepower))
			{
				strategy = newStrategy;
			}
			
			// Cool system
            temperature *= 1-coolingRate;
		}
		
		for(int i = 1; i < 12; i++)
		{
			double cost = enemyBaseDifficulty.get(i);
			double firepowersum = 0;
			List<Integer> airplanes = new ArrayList<Integer>();
			for(int j = 1; j < 6; j++)
			{
				if(strategy[i*j - 1] == '1')
				{
					airplanes.add(j - 1);
					firepowersum += listWarPlaneFirepower.get(j-1).getFirepower();
				}
			}
			
			cost /= firepowersum;
			
			EnemyBaseAttack enemyBaseAttack = new EnemyBaseAttack(cost, airplanes);
			bases.put(i, enemyBaseAttack);
		}
	}
}