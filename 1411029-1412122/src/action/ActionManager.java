package action;

import java.util.HashMap;

import utils.Coordinate;

public class ActionManager {
	public static ActionManager instance = null;
	
	private HashMap<Coordinate, Action> actionList;
	
	private ActionManager()
	{
		actionList = new HashMap<Coordinate, Action>();
	}
	
	public static ActionManager getInstance()
	{
		if(instance == null)
		{
			instance = new ActionManager();
		}
		
		return instance;
	}
	
	public void registerAction(int positionX, int positionY, Action action)
	{
		actionList.put(new Coordinate(positionX, positionY), action);
	}
	
	public void resetActions()
	{
		actionList.clear();
	}
	
	public void executeAction(int positionX, int positionY)
	{
		Coordinate coordinate = new Coordinate(positionX, positionY);
		
		if(actionList.containsKey(coordinate))
		{
			Action action = actionList.get(coordinate);
			action.execute();
			action.onActionExecuted();
		}
	}
}
