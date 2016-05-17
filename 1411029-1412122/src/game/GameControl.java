package game;

import action.ActionListener;
import action.ActionManager;
import action.MoveFromTrackSquareToTrackSquareAction;
import action.MoveFromYardToTrackAction;
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
	
	private void resetHighlights()
	{
		GamePanel.trackView.clearSquareHighlight();
		GamePanel.yardView.setYardHighlight(null);
	}
	
	private ActionListener removeFromYardActionListener = new ActionListener()
	{

		@Override
		public void onActionExecuted() {
			ActionManager actionManager = ActionManager.getInstance();
			actionManager.resetActions();
			
			resetHighlights();
			
			setPlayerDice();
		}

	};
	
	private ActionListener moveFromTrackToTrackActionListener = new ActionListener()
	{

		@Override
		public void onActionExecuted() {
			ActionManager actionManager = ActionManager.getInstance();
			actionManager.resetActions();
			
			resetHighlights();
			
			System.out.println("Test - track to track action listener executed");
			
			board.nextPlayer();
			setPlayerDice();
			
			GamePanel.requestRedraw();
		}

	};
	
	private ActionListener diceActionListener = new ActionListener()
	{

		@Override
		public void onActionExecuted() {
			ActionManager actionManager = ActionManager.getInstance();
			actionManager.resetActions();
			
			resetHighlights();
			
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
			setPlayerTrackToTrackMoves(diceValue, currentPlayer);
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

	private void setPlayerTrackToTrackMoves(int diceValue, PlayerColor currentPlayer) {
		GamePanel.trackView.clearSquareHighlight();
		
		for(int i = 1; i <= 52; i++)
		{
			Square origin = board.getTrack().getSquareAt(i);
			if(origin.getPawnCount() > 0 && origin.getPawnsColor().equals(currentPlayer)) //Checa se há peças na casa da cor do jogador
			{
				Square destination;
				if(i+diceValue>52) destination = board.getTrack().getSquareAt(i+diceValue-52);
				else destination = board.getTrack().getSquareAt(i+diceValue);
				
				if(destination.getPawnCount() < 2) 
				{
					GamePanel.trackView.setSquareHighlight(i);
					
					MoveFromTrackSquareToTrackSquareAction action;
					
					try {
						action = new MoveFromTrackSquareToTrackSquareAction(board, origin, destination, moveFromTrackToTrackActionListener);

						Coordinate coordinates = GamePanel.trackView.getPawnCoordinate(i);
						int pawnX = (int) (coordinates.getX() / ConstantsEnum.squareSize + 1);
						int pawnY = (int) (coordinates.getY() / ConstantsEnum.squareSize + 1);
						ActionManager.getInstance().registerAction(pawnX, pawnY, action);
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}

				}
			}
		}
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
		
		if(canMoveFromTrackToPocket(diceValue, currentPlayer))
		{
			return true;
		}
		
		if(canMoveInsideLane(diceValue, currentPlayer))
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
		if(diceValue != 6)
		{
			Square origin = board.getLane(currentPlayer).getSquareAt(6-diceValue);
			if(origin.getPawnCount() > 0) //Checa se há peças na casa e se a posição da casa somada ao valor do dado ainda está no track
			{
				return true;
			}
		}
		return false;
	}

	private boolean canMoveInsideLane(int diceValue, PlayerColor currentPlayer) {
		for(int i = 1; i <= 4; i++) //TODO: Mudar Lane.getSquareAt() e atualizar método
		{
			Square origin = board.getLane(currentPlayer).getSquareAt(i);
			if(origin.getPawnCount() > 0 && i + diceValue < 6) //Checa se há peças na casa e se a posição da casa somada ao valor do dado ainda está no track
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
			if(origin.getPawnCount() > 0 && origin.getPawnsColor().equals(currentPlayer)) //Checa se há peças na casa da cor do jogador
			{
				for(int j = 1; j < diceValue; j++){
					if(i + j == lastSquareOfCurrentPlayer) return true; //Se ele chega na última casa com um número inferior ao tirado do dado, ele entra na lane.
				}
			}
		}
		
		return false;
	}
	
	private boolean canMoveFromTrackToPocket(int diceValue, PlayerColor currentPlayer) {
		int lastSquareOfCurrentPlayer = getIndexOfLastSquareOfPlayer(currentPlayer);
		
		Square origin = board.getTrack().getSquareAt(lastSquareOfCurrentPlayer);
		if(origin.getPawnCount() > 0 && origin.getPawnsColor().equals(currentPlayer) && diceValue == 6) //está na última casa e tirou 6
		{
			return true;
		}
		
		return false;
	}

	private boolean canMoveInsideTrack(int diceValue, PlayerColor currentPlayer) {
		for(int i = 1; i <= 52; i++)
		{
			Square origin = board.getTrack().getSquareAt(i);
			if(origin.getPawnCount() > 0 && origin.getPawnsColor().equals(currentPlayer)) //Checa se há peças na casa da cor do jogador
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
		
		MoveFromYardToTrackAction action;
		
		try {
			action = new MoveFromYardToTrackAction(board, removeFromYardActionListener);

			Coordinate coordinates = GamePanel.yardView.getYardHighlightPawnCoordinate();
			int pawnX = (int) (coordinates.getX() / ConstantsEnum.squareSize + 1);
			int pawnY = (int) (coordinates.getY() / ConstantsEnum.squareSize + 1);
			ActionManager.getInstance().registerAction(pawnX, pawnY, action);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Board getLoadedBoard()
	{
		return board;
	}

	public void startGame()
	{
		ActionManager.getInstance().resetActions();
		board.resetBoard();
		GamePanel.requestViewReset();
		
		setPlayerDice();
	}
	
	public void loadMap(Board savedMap, int currentDiceValue) {
		ActionManager.getInstance().resetActions();
		resetHighlights();
		
		this.board = savedMap;
		
		GamePanel.getInstance().setBoard(savedMap);
		
		GamePanel.requestViewReset();
		
		if(hasMove(currentDiceValue, board.getCurrentPlayer()))
		{
			setPlayerMoves(currentDiceValue, board.getCurrentPlayer());
		}
		else
		{
			setPlayerDice();
		}
		
		GamePanel.requestRedraw();
	}
}
