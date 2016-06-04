package actions;

import actions.common.Action;
import actions.common.ActionListener;
import actions.common.ActionManager;
import boardInfo.Lane;
import boardInfo.Square;
import game.Notifications;
import rules.GameControl;
import utils.ConstantsEnum.SquareType;

public class MoveFromTrackToLaneAction extends Action
{

	private Square fromSquare;
	private Lane toLane;
	private int toLanePosition;

	public MoveFromTrackToLaneAction(Square fromSquare, Lane toLane, int toLanePosition, ActionListener actionListener)
			throws Exception
	{
		super(actionListener);
		this.fromSquare = fromSquare;
		this.toLane = toLane;
		this.toLanePosition = toLanePosition;
	}

	@Override
	public void execute()
	{
		ActionManager.getInstance().resetActions();

		try
		{
			fromSquare.removePawn(toLane.getColor());
		} catch (Exception e)
		{
			Notifications.notifyError(e.getMessage());
			e.printStackTrace();
		}

		toLane.addPawn(toLanePosition);

		GameControl.lastMovedPawnPosition = toLanePosition;
		GameControl.lastMovedPawnDestinationType = SquareType.LANESQUARE;
	}

}