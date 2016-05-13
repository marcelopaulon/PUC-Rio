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
			
			int diceValue = Dice.getCurValue();
			PlayerColor currentPlayer = board.getCurrentPlayer();
			
			
			if(hasMove(diceValue, currentPlayer))
			{
				setPlayerMoves(diceValue, currentPlayer);
			}
			else
			{
				board.nextPlayer();
				setPlayerDice();
			}
			
			GamePanel.requestRedraw();
		}

	};
	
	private void setPlayerMoves(int diceValue, PlayerColor currentPlayer)
	{
		if(canMoveFromYardToTrack(diceValue, currentPlayer))
		{
			setPlayerYardToTrackMoves();
		}
		
		if(canMoveInsideTrack(diceValue, currentPlayer))
		{
			setPlayerTrackToTrackMoves();
		}
		
		if(canMoveFromTrackToLane(diceValue, currentPlayer))
		{
			setPlayerTrackToLaneMoves();
		}
		
		if(canMoveFromLaneToPocket(diceValue, currentPlayer))
		{
			setPlayerLaneToPocketMoves();
		}
	}
	
	private void setPlayerLaneToPocketMoves() {
		// TODO Auto-generated method stub
		
	}

	private void setPlayerTrackToLaneMoves() {
		// TODO Auto-generated method stub
		
	}

	private void setPlayerTrackToTrackMoves() {
		// TODO Auto-generated method stub
		
	}

	private boolean hasMove(int diceValue, PlayerColor currentPlayer)
	{
		if(canMoveFromYardToTrack(diceValue, currentPlayer))
		{
			return true;
		}
		
		if(canMoveInsideTrack(diceValue, currentPlayer))
		{
			return true;
		}
		
		if(canMoveFromTrackToLane(diceValue, currentPlayer))
		{
			return true;
		}
		
		if(canMoveFromLaneToPocket(diceValue, currentPlayer))
		{
			return true;
		}
		
		return false;
	}
	
	private boolean canMoveFromLaneToPocket(int diceValue, PlayerColor currentPlayer) {
		// TODO Auto-generated method stub
		return false;
	}

	private boolean canMoveFromTrackToLane(int diceValue, PlayerColor currentPlayer) {
		// TODO Auto-generated method stub
		return false;
	}

	private boolean canMoveInsideTrack(int diceValue, PlayerColor currentPlayer) {
		// TODO Auto-generated method stub
		return false;
	}

	private boolean canMoveFromYardToTrack(int diceValue, PlayerColor currentPlayer) {
		
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
	
	private void setPlayerYardToTrackMoves()
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
