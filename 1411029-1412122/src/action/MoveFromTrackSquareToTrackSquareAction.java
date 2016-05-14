package action;

import boardInfo.Board;
import boardInfo.Pawn;
import boardInfo.Square;
import playerInfo.PlayerColor;

public class MoveFromTrackSquareToTrackSquareAction extends Action {

	private Board board;
	private Square fromSquare;
	private Square toSquare;
	
	public MoveFromTrackSquareToTrackSquareAction(Board board, Square fromSquare, Square toSquare, ActionListener actionListener) throws Exception
	{
		super(actionListener);
		this.board = board;
		this.fromSquare = fromSquare;
		this.toSquare = toSquare;
	}
	
	@Override
	public void execute() {
		ActionManager.getInstance().resetActions();
		
		if(toSquare.getPawnCount() > 0)
		{
			PlayerColor toColor = toSquare.getPawnsColor();
			
			if(toColor != fromSquare.getPawnsColor()) // Need to remove opponent pawn 
			{
				toSquare.removePawn();
				board.getYard(toColor).addPawn();
			}
		}
		
		toSquare.addPawn(new Pawn(fromSquare.getPawnsColor()));
		fromSquare.removePawn();
	}

}