package action;

import boardInfo.Board;
import boardInfo.Dice;
import game.GamePanel;
import playerInfo.PlayerColor;
import rendering.YardView;

public class RollDiceAction extends Action {
	
	public RollDiceAction(ActionListener actionListener) throws Exception
	{
		super(actionListener);
	}
	
	@Override
	public void execute() {
		Dice.rollDice();
	}

}
