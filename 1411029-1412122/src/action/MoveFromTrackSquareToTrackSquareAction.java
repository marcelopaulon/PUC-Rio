package action;

import boardInfo.Pawn;
import boardInfo.Square;

public class MoveFromTrackSquareToTrackSquareAction extends Action {

	private Square fromSquare;
	private Square toSquare;
	
	public MoveFromTrackSquareToTrackSquareAction(Square fromSquare, Square toSquare, ActionListener actionListener) throws Exception
	{
		super(actionListener);
		this.fromSquare = fromSquare;
		this.toSquare = toSquare;
	}
	
	@Override
	public void execute() {
		ActionManager.getInstance().resetActions();
		toSquare.addPawn(new Pawn(fromSquare.getPawnsColor()));
		fromSquare.removePawn();
	}

}