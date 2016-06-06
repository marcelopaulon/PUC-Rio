package actions;

import actions.common.Action;
import actions.common.ActionListener;
import actions.common.ActionManager;
import boardInfo.Dice;

public class RollDiceAction extends Action
{

	public RollDiceAction(ActionListener actionListener) throws Exception
	{
		super(actionListener);
	}

	@Override
	public void execute()
	{
		ActionManager.getInstance().resetActions();
		
		Dice.rollDice();
	}

}
