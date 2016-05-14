package game;

import action.ActionListener;
import action.ActionManager;
import action.RemoveFromYardAction;
import action.RollDiceAction;
import boardInfo.Board;
import boardInfo.Dice;
import boardInfo.Square;
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
	
	private int getIndexOfLastSquareOfPlayer(PlayerColor currentPlayer){
		switch(currentPlayer){
		case BLUE:
			return 33;
		case GREEN:
			return 7;
		case RED:
			return 46;
		case YELLOW:
			return 20;
		default:
			//TODO: Exception?
			return -1;
		}
	}
	
	private boolean canMoveFromLaneToPocket(int diceValue, PlayerColor currentPlayer) {
		if(diceValue != 6) //TODO: Mudar Lane.getSquareAt() e atualizar m�todo
		{
			Square origin = board.getLane(currentPlayer).getSquareAt(5-diceValue);
			if(origin.getPawnCount() > 0) //Checa se h� pe�as na casa e se a posi��o da casa somada ao valor do dado ainda est� no track
			{
				return true;
			}
		}
		return false;
	}

	private boolean canMoveInsideLane(int diceValue, PlayerColor currentPlayer) {
		for(int i = 0; i < 5; i++) //TODO: Mudar Lane.getSquareAt() e atualizar m�todo
		{
			Square origin = board.getLane(currentPlayer).getSquareAt(i);
			if(origin.getPawnCount() > 0 && i + diceValue < 5) //Checa se h� pe�as na casa e se a posi��o da casa somada ao valor do dado ainda est� no track
			{
				Square destination = board.getLane(currentPlayer).getSquareAt(i+diceValue);
				if(destination.getPawnCount() < 2) return true;
			}
		}
		
		return false;		
	}

	private boolean canMoveFromTrackToLane(int diceValue, PlayerColor currentPlayer) {
		int lastSquareOfCurrentPlayer = getIndexOfLastSquareOfPlayer(currentPlayer);
		
		for(int i = 1; i <= 52; i++)
		{
			Square origin = board.getTrack().getSquareAt(i);
			if(origin.getPawnCount() > 0 && origin.getPawnsColor().equals(currentPlayer)) //Checa se h� pe�as na casa da cor do jogador
			{
				for(int j = 1; j < diceValue; j++){
					if(i + j == lastSquareOfCurrentPlayer) return true; //Se ele chega na �ltima casa com um n�mero inferior ao tirado do dado, ele entra na lane.
				}
			}
		}
		
		return false;
	}
	
	private boolean canMoveFromTrackToPocket(int diceValue, PlayerColor currentPlayer) {
		int lastSquareOfCurrentPlayer = getIndexOfLastSquareOfPlayer(currentPlayer);
		
		Square origin = board.getLane(currentPlayer).getSquareAt(lastSquareOfCurrentPlayer);
		if(origin.getPawnCount() > 0 && origin.getPawnsColor().equals(currentPlayer) && diceValue == 6) //est� na �ltima casa e tirou 6
		{
			return true;
		}
		return false;
	}

	private boolean canMoveInsideTrack(int diceValue, PlayerColor currentPlayer) {
		for(int i = 1; i <= 52; i++)
		{
			Square origin = board.getTrack().getSquareAt(i);
			if(origin.getPawnCount() > 0 && origin.getPawnsColor().equals(currentPlayer)) //Checa se h� pe�as na casa da cor do jogador
			{
				Square destination;
				if(i+diceValue>52) destination = board.getTrack().getSquareAt(i+diceValue-52);
				else destination = board.getTrack().getSquareAt(i+diceValue);
				
				if(destination.getPawnCount() < 2) return true;
			}
		}
		
		return false;
	}
	
	private boolean canMoveFromYardToTrack(int diceValue, PlayerColor currentPlayer) {
		
		if(board.getYard(currentPlayer).getCount() > 0 && diceValue == 5)
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
