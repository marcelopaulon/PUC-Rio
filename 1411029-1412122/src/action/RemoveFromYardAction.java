package action;

import boardInfo.Track;
import boardInfo.Yard;
import game.GamePanel;
import playerInfo.PlayerColor;

public class RemoveFromYardAction implements IAction {

	private PlayerColor color;
	private Yard yard; 
	private Track track;
	
	public RemoveFromYardAction(PlayerColor color, Yard yard, Track track)
	{
		this.color = color;
		this.yard = yard;
		this.track = track;
	}
	
	@Override
	public void execute() {
		ActionManager actionManager = ActionManager.getInstance();
		actionManager.resetActions();
		
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
		
		track.addPawn(position, color);
		
		GamePanel.requestRedraw();
	}

}
