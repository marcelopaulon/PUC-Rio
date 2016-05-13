package action;

import boardInfo.Board;
import boardInfo.Dice;
import game.GamePanel;
import playerInfo.PlayerColor;
import rendering.YardView;

public class RollDiceAction extends Action {

	private Board board;
	private YardView yardView;
	
	public RollDiceAction(Board board, YardView yardView, ActionListener actionListener) throws Exception
	{
		super(actionListener);
		this.board = board;
		this.yardView = yardView;
	}
	
	@Override
	public void execute() {
		ActionManager actionManager = ActionManager.getInstance();
		actionManager.resetActions();
		System.out.println("Execute");
		Dice.rollDice();
		PlayerColor currentPlayer = board.getCurrentPlayer();
		
		if(board.getYard(currentPlayer).getCount() > 0 && Dice.getCurValue() == 6)
		{
			yardView.setYardHighlight(currentPlayer);
		}
		
		GamePanel.requestRedraw();
	}

}
