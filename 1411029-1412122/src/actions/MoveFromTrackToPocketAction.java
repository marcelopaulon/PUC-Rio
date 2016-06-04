package actions;

import actions.common.Action;
import actions.common.ActionListener;
import actions.common.ActionManager;
import boardInfo.Pocket;
import boardInfo.Square;
import rules.GameControl;
import utils.ConstantsEnum.SquareType;

public class MoveFromTrackToPocketAction extends Action  {

	private Square fromSquare;
	private Pocket toPocket;
	
	public MoveFromTrackToPocketAction(Square fromSquare, Pocket toPocket, ActionListener actionListener) throws Exception
	{
		super(actionListener);
		this.fromSquare = fromSquare;
		this.toPocket = toPocket;
	}
	
	@Override
	public void execute() {
		ActionManager.getInstance().resetActions();
		try {
			fromSquare.removePawn(toPocket.getColor());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		toPocket.addPawn();
		
		GameControl.lastMovedPawnPosition = toPocket.getColor().asInt();
		GameControl.lastMovedPawnDestinationType = SquareType.POCKETSQUARE;
	}
	
}
