package action;

import boardInfo.Board;
import boardInfo.Dice;
import game.GamePanel;
import playerInfo.PlayerColor;
import rendering.ConstantsEnum;
import rendering.YardView;
import utils.Coordinate;

public class RollDiceAction implements IAction {

	private Board board;
	private YardView yardView;
	
	public RollDiceAction(Board board, YardView yardView)
	{
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
		
	//	if(board.getYard(currentPlayer).getCount() > 0 && Dice.getCurValue() == 6)
	//	{
			yardView.setYardHighlight(currentPlayer);
			RemoveFromYardAction action = new RemoveFromYardAction(currentPlayer, board.getYard(currentPlayer), board.getTrack());
			Coordinate coordinate = yardView.getCoordinates(currentPlayer.asInt());
			int positionX = (int) (((1.05*ConstantsEnum.squareSize) + coordinate.getX())/ConstantsEnum.squareSize) + 1;
			int positionY = (int) (((1.05*ConstantsEnum.squareSize) + coordinate.getY())/ConstantsEnum.squareSize) + 1;
			actionManager.registerAction(positionX, positionY, action);
	//	}
		
		//board.getYard(currentPlayer).
		GamePanel.requestRedraw();
	}

}
