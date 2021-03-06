package game;

import boardInfo.Pocket;
import boardInfo.Square;
import utils.ConstantsEnum.SquareType;

public class MoveFromTrackToPocketAction extends Action
{

	private Square fromSquare;
	private Pocket toPocket;

	public MoveFromTrackToPocketAction(Square fromSquare, Pocket toPocket, ActionListener actionListener)
			throws Exception
	{
		super(actionListener);
		this.fromSquare = fromSquare;
		this.toPocket = toPocket;
	}

	@Override
	public void execute() throws Exception
	{
		ActionManager.getInstance().resetActions();
		
		fromSquare.removePawn(toPocket.getColor());
		toPocket.addPawn();

		GameControl.lastMovedPawnPosition = toPocket.getColor().asInt();
		GameControl.lastMovedPawnDestinationType = SquareType.POCKETSQUARE;
	}

}
