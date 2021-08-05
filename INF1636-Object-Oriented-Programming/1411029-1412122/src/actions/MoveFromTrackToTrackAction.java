package actions;

import java.util.List;

import boardInfo.Board;
import boardInfo.Square;
import playerInfo.PlayerColor;
import rules.GameControl;
import utils.ConstantsEnum.SquareType;

public class MoveFromTrackToTrackAction extends Action
{

	private Board board;
	private Square fromSquare;
	private Square toSquare;
	private int toSquarePosition;
	private boolean shouldRemoveOpponent;

	public MoveFromTrackToTrackAction(Board board, Square fromSquare, Square toSquare, int toSquarePosition,
			boolean shouldRemoveOpponent, ActionListener actionListener) throws Exception
	{
		super(actionListener);
		this.board = board;
		this.fromSquare = fromSquare;
		this.toSquare = toSquare;
		this.toSquarePosition = toSquarePosition;
		this.shouldRemoveOpponent = shouldRemoveOpponent;
	}

	@Override
	public void execute() throws Exception
	{
		ActionManager.getInstance().resetActions();

		PlayerColor color = board.getCurrentPlayer();

		if (toSquare.getPawnCount() > 0 && shouldRemoveOpponent)
		{
			List<PlayerColor> colors = toSquare.getPawnsColors();

			// Opponent in destination, must capture it
			if (colors.get(0) != color)
			{
				PlayerColor opponentColor = colors.get(0);

				// Adds pawn to opponent's yard
				board.getYard(opponentColor).addPawn();

				// Remove opponent pawn
				super.capturedPawn = true;
				toSquare.removePawn(opponentColor);
			}
		}

		toSquare.addPawn(color);

		GameControl.lastMovedPawnPosition = toSquarePosition;
		GameControl.lastMovedPawnDestinationType = SquareType.TRACKSQUARE;

		fromSquare.removePawn(color);
	}

}