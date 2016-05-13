package action;

import boardInfo.Lane;
import boardInfo.Pocket;

public class MoveFromLaneToPocketAction extends Action {

	private Lane fromLane;
	private Pocket toPocket;
	
	public MoveFromLaneToPocketAction(Lane fromLane, Pocket toPocket, ActionListener actionListener) throws Exception
	{
		super(actionListener);
		this.fromLane = fromLane;
		this.toPocket = toPocket;
	}
	
	@Override
	public void execute() {
		ActionManager.getInstance().resetActions();
		fromLane.removePawn();
		toPocket.addPawn();
	}

}
