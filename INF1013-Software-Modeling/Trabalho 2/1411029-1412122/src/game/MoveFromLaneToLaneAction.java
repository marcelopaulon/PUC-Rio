package game;

import boardInfo.Lane;
import utils.ConstantsEnum.SquareType;

public class MoveFromLaneToLaneAction extends Action
{
	private Lane lane;
	private int fromLanePosition;
	private int toLanePosition;

	public MoveFromLaneToLaneAction(Lane lane, int fromLanePosition, int toLanePosition, ActionListener actionListener)
			throws Exception
	{
		super(actionListener);
		this.lane = lane;
		this.fromLanePosition = fromLanePosition;
		this.toLanePosition = toLanePosition;
	}

	@Override
	public void execute() throws Exception
	{
		ActionManager.getInstance().resetActions();

		lane.removePawn(fromLanePosition);
		lane.addPawn(toLanePosition);

		GameControl.lastMovedPawnPosition = toLanePosition;
		GameControl.lastMovedPawnDestinationType = SquareType.LANESQUARE;
	}
}
