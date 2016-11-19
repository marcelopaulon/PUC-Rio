package game;

import boardInfo.Lane;
import boardInfo.Square;
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
	public void execute() throws Exception
	{
		ActionManager.getInstance().resetActions();

		fromSquare.removePawn(toLane.getColor());
		toLane.addPawn(toLanePosition);

		GameControl.lastMovedPawnPosition = toLanePosition;
		GameControl.lastMovedPawnDestinationType = SquareType.LANESQUARE;
	}

}