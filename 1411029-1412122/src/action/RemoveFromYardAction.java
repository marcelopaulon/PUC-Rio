package action;

import boardInfo.Board;
import boardInfo.Yard;
import game.GamePanel;
import playerInfo.PlayerColor;
import rendering.YardView;

public class RemoveFromYardAction extends Action {

	private Board board;
	private YardView yardView;
	
	public RemoveFromYardAction(Board board, ActionListener actionListener) throws Exception
	{
		super(actionListener);
		this.board = board;
	}
	
	@Override
	public void execute() {	
		PlayerColor color = board.getCurrentPlayer();
		GamePanel.yardView.setYardHighlight(null);
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
