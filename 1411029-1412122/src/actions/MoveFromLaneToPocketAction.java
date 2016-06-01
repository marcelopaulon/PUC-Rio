package actions;

import actions.common.Action;
import actions.common.ActionListener;
import actions.common.ActionManager;
import boardInfo.Lane;
import boardInfo.Pocket;

public class MoveFromLaneToPocketAction extends Action {

	private Lane fromLane;
	private int fromLanePosition;
	private Pocket toPocket;
	
	public MoveFromLaneToPocketAction(Lane fromLane, int fromLanePosition, Pocket toPocket, ActionListener actionListener) throws Exception
	{
		super(actionListener);
		this.fromLane = fromLane;
		this.fromLanePosition = fromLanePosition;
		this.toPocket = toPocket;
	}
	
	@Override
	public void execute() {
		ActionManager.getInstance().resetActions();
		
		try {
			fromLane.removePawn(fromLanePosition);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		toPocket.addPawn();
	}

}
