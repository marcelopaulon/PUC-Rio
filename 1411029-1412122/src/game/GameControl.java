package game;

import action.ActionListener;
import action.ActionManager;
import action.RemoveFromYardAction;
import action.RollDiceAction;
import boardInfo.Board;
import boardInfo.Dice;
import playerInfo.PlayerColor;
import utils.ConstantsEnum;
import utils.Coordinate;

public class GameControl {

	private Board board;
		
	public GameControl(Board board)
	{
		this.board = board;
	}
	
	private ActionListener removeFromYardActionListener = new ActionListener()
	{

		@Override
		public void onActionExecuted() {
			ActionManager actionManager = ActionManager.getInstance();
			actionManager.resetActions();
			
			setPlayerDice();
		}

	};
	
	private ActionListener diceActionListener = new ActionListener()
	{

		@Override
		public void onActionExecuted() {
			ActionManager actionManager = ActionManager.getInstance();
			actionManager.resetActions();
			
			System.out.println("Dice rolled");
			
			if(hasMove())
			{
				setPlayerMoves();
			}
			else
			{
				board.nextPlayer();
				setPlayerDice();
			}
			
			GamePanel.requestRedraw();
		}

	};
	
	private void setPlayerMoves()
	{
		int diceValue = Dice.getCurValue();
		PlayerColor currentPlayer = board.getCurrentPlayer();
		
		if(board.getYard(currentPlayer).getCount() > 0 && diceValue == 6)
		{
			setPlayerYardRemoval();
		}
	}
	
	private boolean hasMove()
	{
		int diceValue = Dice.getCurValue();
		PlayerColor currentPlayer = board.getCurrentPlayer();
		
		if(board.getYard(currentPlayer).getCount() > 0 && diceValue == 6)
		{
			return true;
		}
		
		return false;
	}
	
	private void setPlayerDice()
	{
		RollDiceAction action;
		
		try {
			action = new RollDiceAction(diceActionListener);
			
			Coordinate diceCoordinates = GamePanel.yardView.getYardDiceCoordinates(board.getCurrentPlayer());
			int x = (int) diceCoordinates.getX();
			int y = (int) diceCoordinates.getY();
			
			ActionManager.getInstance().registerAction(x, y, action);
			ActionManager.getInstance().registerAction(x+1, y, action);
			ActionManager.getInstance().registerAction(x-1, y, action);
			ActionManager.getInstance().registerAction(x, y+1, action);
			ActionManager.getInstance().registerAction(x, y-1, action);
			
			ActionManager.getInstance().registerAction(x+1, y+1, action);
			ActionManager.getInstance().registerAction(x-1, y-1, action);
			ActionManager.getInstance().registerAction(x+1, y-1, action);
			ActionManager.getInstance().registerAction(x-1, y+1, action);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void setPlayerYardRemoval()
	{
		GamePanel.yardView.setYardHighlight(board.getCurrentPlayer());
		
		RemoveFromYardAction action;
		
		try {
			action = new RemoveFromYardAction(board, removeFromYardActionListener);

			Coordinate coordinates = GamePanel.yardView.getYardHighlightPawnCoordinate();
			int pawnX = (int) (coordinates.getX() / ConstantsEnum.squareSize + 1);
			int pawnY = (int) (coordinates.getY() / ConstantsEnum.squareSize + 1);
			ActionManager.getInstance().registerAction(pawnX, pawnY, action);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void startGame()
	{
		ActionManager.getInstance().resetActions();
		board.resetBoard();
		GamePanel.requestViewReset();
		
		setPlayerDice();
	}
}
