package actions;

import java.util.List;

import actions.common.Action;
import actions.common.ActionListener;
import actions.common.ActionManager;
import boardInfo.Board;
import boardInfo.Pawn;
import boardInfo.Square;
import game.Notifications;
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
	public void execute()
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
				try
				{
					super.capturedPawn = true;
					toSquare.removePawn(opponentColor);
				} catch (Exception e)
				{
					Notifications.notifyError(e.getMessage());
					e.printStackTrace();
				} 
			}
		}

		toSquare.addPawn(new Pawn(color));

		GameControl.lastMovedPawnPosition = toSquarePosition;
		GameControl.lastMovedPawnDestinationType = SquareType.TRACKSQUARE;

		try
		{
			fromSquare.removePawn(color);
		} catch (Exception e)
		{
			Notifications.notifyError(e.getMessage());
			e.printStackTrace();
		}
	}

}