package actions;

import actions.common.Action;
import actions.common.ActionListener;
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
		Dice.rollDice();
	}

}
