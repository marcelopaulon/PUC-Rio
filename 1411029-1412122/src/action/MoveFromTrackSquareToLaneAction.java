package action;

import boardInfo.Lane;
import boardInfo.Square;

public class MoveFromTrackSquareToLaneAction extends Action {

	private Square fromSquare;
	private Lane toLane;
	private int toLanePosition;
	
	public MoveFromTrackSquareToLaneAction(Square fromSquare, Lane toLane, int toLanePosition, ActionListener actionListener) throws Exception
	{
		super(actionListener);
		this.fromSquare = fromSquare;
		this.toLane = toLane;
		this.toLanePosition = toLanePosition;
	}
	
	@Override
	public void execute() {
		ActionManager.getInstance().resetActions();
		fromSquare.removePawn();
		toLane.addPawn(toLanePosition);
	}

}