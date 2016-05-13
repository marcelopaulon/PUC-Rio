package action;

import boardInfo.Lane;
import boardInfo.Square;

public class MoveFromTrackSquareToLaneAction extends Action {

	private Square fromSquare;
	private Lane toLane;
	
	public MoveFromTrackSquareToLaneAction(Square fromSquare, Lane toLane, ActionListener actionListener) throws Exception
	{
		super(actionListener);
		this.fromSquare = fromSquare;
		this.toLane = toLane;
	}
	
	@Override
	public void execute() {
		ActionManager.getInstance().resetActions();
		fromSquare.removePawn();
		toLane.addPawn();
	}

}
