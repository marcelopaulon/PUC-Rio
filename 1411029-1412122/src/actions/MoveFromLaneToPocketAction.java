package actions;

import actions.common.Action;
import actions.common.ActionListener;
import actions.common.ActionManager;
import boardInfo.Lane;
import boardInfo.Pocket;
import rules.GameControl;
import utils.ConstantsEnum.SquareType;

public class MoveFromLaneToPocketAction extends Action
{

	private Lane fromLane;
	private int fromLanePosition;
	private Pocket toPocket;

	public MoveFromLaneToPocketAction(Lane fromLane, int fromLanePosition, Pocket toPocket,
			ActionListener actionListener) throws Exception
	{
		super(actionListener);
		this.fromLane = fromLane;
		this.fromLanePosition = fromLanePosition;
		this.toPocket = toPocket;
	}

	@Override
	public void execute() throws Exception
	{
		ActionManager.getInstance().resetActions();

		fromLane.removePawn(fromLanePosition);
		toPocket.addPawn();

		GameControl.lastMovedPawnPosition = toPocket.getColor().asInt();
		GameControl.lastMovedPawnDestinationType = SquareType.POCKETSQUARE;
	}

}
