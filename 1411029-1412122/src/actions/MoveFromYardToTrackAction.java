package actions;

import java.util.List;

import actions.common.Action;
import actions.common.ActionListener;
import boardInfo.Board;
import boardInfo.Square;
import boardInfo.Track;
import boardInfo.Yard;
import game.GamePanel;
import playerInfo.PlayerColor;

public class MoveFromYardToTrackAction extends Action {

	private Board board;
	
	public MoveFromYardToTrackAction(Board board, ActionListener actionListener) throws Exception
	{
		super(actionListener);
		this.board = board;
	}
	
	@Override
	public void execute() {	
		PlayerColor color = board.getCurrentPlayer();
		Yard yard = board.getYard(color);
		
		yard.removePawn();
		
		int position = -1;
		
		if(color == PlayerColor.GREEN) 
		{
			position = 9;
		}
		else if(color == PlayerColor.YELLOW) 
		{
			position = 22;
		}
		else if(color == PlayerColor.BLUE) 
		{
			position = 35;
		}
		else if(color == PlayerColor.RED) 
		{
			position = 48;
		}
		
		board.getTrack().addPawn(position, color);
				
		GamePanel.requestRedraw();
	}

}
