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
		
		// Rules
		for (int i = 1; i <= map.getNRows(); i++) {
			for (int j = 1; j <= map.getNColumns(); j++) {
				MapCell.Cells value = map.getValue(i, j);
				String cellRule = null;
				
				if (value == MapCell.Cells.START)
					cellRule = "floorCell(";
				if (value == MapCell.Cells.WALL)
					cellRule = "wallCell(";
				if (value == MapCell.Cells.HOLE)
					cellRule = "holeCell(";
				if (value == MapCell.Cells.FLOOR)
					cellRule = "floorCell(";
				if (value == MapCell.Cells.FLOORVISITED)
					cellRule = "floorCell(";
				if (value == MapCell.Cells.TELETRANSPORT)
					cellRule = "teletransportCell(";
				if (value == MapCell.Cells.GOLD)
					cellRule = "goldCell(";
				if (value == MapCell.Cells.ENEMY20)
					cellRule = "enemy20Cell(_,";
				if (value == MapCell.Cells.ENEMY50)
					cellRule = "enemy50Cell(_,";
				
				if(cellRule == null)
				{
					throw new Exception("Error - invalid map rule");
				}
				
				if(rules.get(cellRule) == null) rules.put(cellRule, new StringBuilder());
				
				rules.get(cellRule).append(cellRule + (j-1) + "," + (i-1) + ").\n");
			}
		}
		
		StringBuilder plMapBuilder = new StringBuilder();
		rules.forEach((key, value) -> plMapBuilder.append(value.toString()));
		
		try(PrintWriter out = new PrintWriter("src\\logic\\map.pl")){
		    out.println( plMapBuilder.toString() );
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		Query q2 = new Query("resetAll().");
		if(!q2.hasSolution()) throw new Exception("Error - Unable to reset in prolog");
		q2.oneSolution();
		Query q3 = new Query("consult", new Term[] {new Atom("src/logic/map.pl")});
		if(!q3.hasSolution()) throw new Exception("Error - Unable to load map in prolog");
	}
	
	public Action getNextMove() 
	{
		Query q3 = new Query("getNextMove(Action).");
		Map<String, Term> solution = q3.oneSolution();
		
		if(solution == null)
		{
			return Action.END;
		}
		
		String action = solution.get("Action").toString();
		
		System.out.println("Action = " + action);
		
		switch(action) 
		{
			case "rotate":
				return Action.ROTATE;
			case "rotateLeft":
				return Action.ROTATELEFT;
			case "attack":
				return Action.ATTACK;
			case "walk":
				return Action.WALK;
			case "gameOver":
				return Action.GAMEOVER;
			case "pickGold":
				return Action.PICKGOLD;
		}
		
		return null;
	}
	
	public int getCurEnergy()
	{
		Query q3 = new Query("curEnergy(E).");
		Map<String, Term> solution = q3.oneSolution();
		
		if(solution == null)
		{
			return -1;
		}
		
		return solution.get("E").intValue();
	}
}
