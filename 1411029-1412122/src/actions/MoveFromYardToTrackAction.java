package actions;

import actions.common.Action;
import actions.common.ActionListener;
import actions.common.ActionManager;
import boardInfo.Board;
import boardInfo.Yard;
import playerInfo.PlayerColor;
import rules.BoardPositions;
import rules.GameControl;
import utils.ConstantsEnum.SquareType;

public class MoveFromYardToTrackAction extends Action
{

	private Board board;

	public MoveFromYardToTrackAction(Board board, ActionListener actionListener) throws Exception
	{
		super(actionListener);
		this.board = board;
	}

	@Override
	public void execute() throws Exception
	{
		ActionManager.getInstance().resetActions();
		
		PlayerColor color = board.getCurrentPlayer();
		Yard yard = board.getYard(color);

		yard.removePawn();

		int position = BoardPositions.getInitialSquarePosition(color);

		board.getTrack().addPawn(position, color);

		GameControl.lastMovedPawnPosition = position;
		GameControl.lastMovedPawnDestinationType = SquareType.TRACKSQUARE;
	}

}
