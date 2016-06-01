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
		
		Track track = board.getTrack();
		Square toSquare = track.getSquareAt(position);
		
		if(toSquare.getPawnCount() > 1)
		{
			List<PlayerColor> colors = toSquare.getPawnsColors();
			if(colors.get(0) != color || colors.get(1) != color) // Opponent in destination, must capture it
			{
				PlayerColor opponentColor;
				
				if(colors.get(0) != color) opponentColor = colors.get(0);
				else opponentColor = colors.get(1);
				
				board.getYard(opponentColor).addPawn(); // Adds pawn to opponent's yard
				
				try {
					toSquare.removePawn(opponentColor);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} // Remove opponent pawn
			}
		}
		
		board.getTrack().addPawn(position, color);
				
		GamePanel.requestRedraw();
	}

}
