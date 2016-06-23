package actions;

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
