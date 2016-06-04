package actions;

import actions.common.Action;
import actions.common.ActionListener;
import actions.common.ActionManager;
import boardInfo.Lane;
import rules.GameControl;
import utils.ConstantsEnum.SquareType;

public class MoveFromLaneToLaneAction extends Action
{
	private Lane lane;
	private int fromLanePosition;
	private int toLanePosition;
	
	public MoveFromLaneToLaneAction(Lane lane, int fromLanePosition, int toLanePosition, ActionListener actionListener) throws Exception
	{
		super(actionListener);
		this.lane = lane;
		this.fromLanePosition = fromLanePosition;
		this.toLanePosition = toLanePosition;
	}
	
	@Override
	public void execute() {
		ActionManager.getInstance().resetActions();
		
		try {
			lane.removePawn(fromLanePosition);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		lane.addPawn(toLanePosition);
		
		GameControl.lastMovedPawnPosition = toLanePosition;
		GameControl.lastMovedPawnDestinationType = SquareType.LANESQUARE;
	}
}
