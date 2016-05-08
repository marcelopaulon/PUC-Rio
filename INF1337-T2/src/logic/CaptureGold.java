package logic;

import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import org.jpl7.*;

import map.GameMap;
import mapcell.MapCell;

public class CaptureGold
{
	private static Query q1 = new Query("consult", new Term[] {new Atom("src/logic/main.pl")});
	
	public CaptureGold()
	{
		System.out.println( "consult " + (q1.hasSolution() ? "succeeded" : "failed"));
	}
	
	public void resetGame(GameMap map) throws Exception
	{
		Map<String, StringBuilder> rules = new HashMap<String, StringBuilder>();
		count = 0; // DEBUG - REMOVE
		// Rules
		for (int i = 0; i < map.getNRows(); i++) {
			for (int j = 0; j < map.getNColumns(); j++) {
				MapCell.Cells value = map.getValue(i, j);
				String cellRule = null;
				
				if (value == MapCell.Cells.START)
				{
					StringBuilder start = new StringBuilder();
					start.append("startPoint(" + j + "," + i + ").\n");
					rules.put("start", start);
					cellRule = "floorCell(";
				}
				if (value == MapCell.Cells.WALL)
					cellRule = "wallCell(";
				if (value == MapCell.Cells.HOLE)
					cellRule = "holeCell(";
				if (value == MapCell.Cells.POWERUP)
					cellRule = "powerupCell(";
				if (value == MapCell.Cells.FLOOR)
					cellRule = "floorCell(";
				if (value == MapCell.Cells.FLOORVISITED)
					cellRule = "floorCell(";
				if (value == MapCell.Cells.TELETRANSPORT)
					cellRule = "teletransportCell(";
				if (value == MapCell.Cells.GOLD)
					cellRule = "goldCell(";
				if (value == MapCell.Cells.ENEMY20)
					cellRule = "enemyCell(20, 100,";
				if (value == MapCell.Cells.ENEMY50)
					cellRule = "enemyCell(50, 100,";
				
				if(cellRule == null)
				{
					throw new Exception("Error - invalid map rule");
				}
				
				if (value == MapCell.Cells.ENEMY20 || value == MapCell.Cells.ENEMY50)
				{
					if(rules.get("enemyCell") == null) rules.put("enemyCell", new StringBuilder());
					rules.get("enemyCell").append(cellRule + j + "," + i + ").\n");
				}
				else
				{
					if(rules.get(cellRule) == null) rules.put(cellRule, new StringBuilder());
					rules.get(cellRule).append(cellRule + j + "," + i + ").\n");
				}
			}
		}
		
		StringBuilder plMapBuilder = new StringBuilder();
		plMapBuilder.append("/* AUTO-GENERATED MAP FILE - CONTENT WILL BE REMOVED AFTER NEXT SEARCH */\n");
		rules.forEach((key, value) -> plMapBuilder.append(value.toString()));
		
		try(PrintWriter out = new PrintWriter("src\\logic\\map.pl")){
		    out.println( plMapBuilder.toString() );
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		Query q2 = new Query("clearMap().");
		if(!q2.hasSolution()) throw new Exception("Error - Unable to clear map in prolog");
		q2.oneSolution();
		Query q3 = new Query("consult", new Term[] {new Atom("src/logic/map.pl")});
		if(!q3.hasSolution()) throw new Exception("Error - Unable to load map in prolog");
		Query q4 = new Query("resetAgent().");
		if(!q4.hasSolution()) throw new Exception("Error - Unable to reset agent in prolog");
		q4.oneSolution();
	}
	
	private int count = 0; // Debug - TODO: Remove
	
	public Action getNextMove() 
	{
		Query q3 = new Query("getNextMove(Action).");
		Map<String, Term> solution = q3.oneSolution();
		
		if(solution == null)
		{
			return Action.END;
		}
		
		String action = solution.get("Action").toString();
		count++; // Debug - TODO: Remove
		Stats stats = getCurStats();
		System.out.println("Action = " + action + " ; X = " + stats.x + "; Y = " + stats.y + "; Step = " + count + "; O = " + stats.orientation);
		
		switch(action) 
		{
			case "rotate":
				return Action.ROTATE;
			case "rotateLeft":
				return Action.ROTATELEFT;
			case "attack":
				return Action.ATTACK;
			case "kill":
				return Action.KILL;
			case "walk":
				return Action.WALK;
			case "gameOver":
				return Action.GAMEOVER;
			case "pickGold":
				return Action.PICKGOLD;
			case "pickPowerup":
				return Action.PICKPOWERUP;
		}
		
		return null;
	}
	
	public Stats getCurStats()
	{
		Query q3 = new Query("getCurrentStats(X, Y, Orientation, Energy, Cost, Ammo).");
		Map<String, Term> solution = q3.oneSolution();
		
		if(solution == null)
		{
			return null;
		}
		
		Stats stats = new Stats();
		
		stats.x = solution.get("X").intValue();
		stats.y = solution.get("Y").intValue();
		stats.orientation = solution.get("Orientation").toString();
		stats.energy = solution.get("Energy").intValue();
		stats.cost = solution.get("Cost").intValue();
		stats.ammo = solution.get("Ammo").intValue();
		
		return stats;
	}
	
}
