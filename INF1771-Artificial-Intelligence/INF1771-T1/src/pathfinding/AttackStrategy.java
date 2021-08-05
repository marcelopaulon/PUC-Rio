package pathfinding;

import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;

import program.Program;
import program.Utils;

public class AttackStrategy
{
	// Base attack strategy list
	public static Hashtable<Integer, EnemyBaseAttack> bases = new Hashtable<Integer, EnemyBaseAttack>();
	
	// Disturbs a strategy - changes 5 of its 55 values
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
	
	// Checks if a given strategy is valid
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
	
	// Generates a random attack strategy
	private static char[] genRandomAttackStrategy()
	{
		char[] strategy = new char[55];
		
		do
		{
			strategy = Utils.randString("01", 55).toCharArray();
		} while(validateStrategy(strategy) == false);
		
		return strategy;
	}
	
	// Get strategy cost
	private static double getCost(char[] strategy, Hashtable<Integer, Integer> enemyBaseDifficulty, List<WarPlaneInfo> listWarPlaneFirepower)
	{
		double cost = 0.0;
		
		for(int i = 0; i < 11; i++)
		{
			int difficulty = enemyBaseDifficulty.get(i + 1);
			double firepowerSum = 0.0;
			
			for(int j = 0; j < 5; j++)
			{
				if(strategy[5*i+j] == '1')
				{
					firepowerSum += listWarPlaneFirepower.get(j).getFirepower();
				}
			}
			
			cost += difficulty/firepowerSum;
		}
		
		return cost;
	}
	
	// Refresh the attack strategy for the game
	public static void Refresh()
	{
		bases.clear();
		
		Hashtable<Integer, Integer> enemyBaseDifficulty = Program.getInstance().getEnemyBaseList();
		List<WarPlaneInfo> listWarPlaneFirepower = Program.getInstance().getWarPlaneList();
		
        // Set initial temperature
        double temperature = 10000;

        // Cooling rate
        double coolingRate = 0.001;
        
        // Random initial strategy
		char[] strategy = genRandomAttackStrategy();

		while(temperature > 1)
		{
			// Generate a new strategy
			char[] newStrategy = strategy.clone();
			disturb(newStrategy);
			
			// If invalid strategy, skip
			if(validateStrategy(newStrategy) == false)
			{
				continue;
			}
			
			// If the new cost is lower than the older cost, then the new strategy is better than the last one
			if(getCost(newStrategy, enemyBaseDifficulty, listWarPlaneFirepower) < getCost(strategy, enemyBaseDifficulty, listWarPlaneFirepower))
			{
				strategy = newStrategy;
			}
			
			// Cool system
            temperature *= 1-coolingRate;
		}
		
		for(int i = 0; i < 11; i++)
		{
			double cost = enemyBaseDifficulty.get(i + 1);
			double firepowersum = 0;
			List<Integer> airplanes = new ArrayList<Integer>();
			
			for(int j = 0; j < 5; j++)
			{
				if(strategy[5*i+j] == '1')
				{
					airplanes.add(j);
					firepowersum += listWarPlaneFirepower.get(j).getFirepower();
				}
			}
			
			cost /= firepowersum;
			
			EnemyBaseAttack enemyBaseAttack = new EnemyBaseAttack(cost, airplanes);
			bases.put(i + 1, enemyBaseAttack);
		}
		
		return;
	}
}