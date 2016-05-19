package game;

import actions.MoveFromLaneToLaneAction;
import actions.MoveFromLaneToPocketAction;
import actions.MoveFromTrackToLaneAction;
import actions.MoveFromTrackToPocketAction;
import actions.MoveFromTrackToTrackAction;
import actions.MoveFromYardToTrackAction;
import actions.RollDiceAction;
import actions.common.ActionListener;
import actions.common.ActionManager;
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
		GamePanel.laneView.clearSquareHighlight(PlayerColor.GREEN);
		GamePanel.laneView.clearSquareHighlight(PlayerColor.BLUE);
		GamePanel.laneView.clearSquareHighlight(PlayerColor.YELLOW);
		GamePanel.laneView.clearSquareHighlight(PlayerColor.RED);
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
	
	private ActionListener moveFromTrackToLaneActionListener = new ActionListener()
	{

		@Override
		public void onActionExecuted() {
			ActionManager actionManager = ActionManager.getInstance();
			actionManager.resetActions();
			
			resetHighlights();
			
			System.out.println("Test - track to lane action listener executed");
			
			board.nextPlayer();
			setPlayerDice();
			
			GamePanel.requestRedraw();
		}

	};
	
	private ActionListener moveFromLaneToLaneActionListener = new ActionListener()
	{

		@Override
		public void onActionExecuted() {
			ActionManager actionManager = ActionManager.getInstance();
			actionManager.resetActions();
			
			resetHighlights();
			
			System.out.println("Test - lane to lane action listener executed");
			
			board.nextPlayer();
			setPlayerDice();
			
			GamePanel.requestRedraw();
		}

	};
	
	private ActionListener moveFromLaneToPocketActionListener = new ActionListener()
	{

		@Override
		public void onActionExecuted() {
			ActionManager actionManager = ActionManager.getInstance();
			actionManager.resetActions();
			
			resetHighlights();
			
			System.out.println("Test - lane to pocket action listener executed");
			
			board.nextPlayer();
			setPlayerDice();
			
			GamePanel.requestRedraw();
		}

	};
	
	private ActionListener moveFromTrackToPocketActionListener = new ActionListener()
	{

		@Override
		public void onActionExecuted() {
			ActionManager actionManager = ActionManager.getInstance();
			actionManager.resetActions();
			
			resetHighlights();
			
			System.out.println("Test - track to pocket action listener executed");
			
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
		System.out.println("----------------- SET ---------------------------");
		
		if(canMoveFromYardToTrack(diceValue, currentPlayer))
		{
			System.out.println("CAN MOVE FROM YARD TO TRACK");
			setPlayerYardToTrackMoves();
		}
		
		for(int position = 1; position <= 52; position++)
		{
			Square origin = board.getTrack().getSquareAt(position);
			if(origin.getPawnCount() > 0 && origin.getPawnsColor() == currentPlayer)
			{
				if(canMoveInsideTrack(diceValue, currentPlayer, position))
				{
					System.out.println("CAN MOVE INSIDE TRACK");
					setPlayerTrackToTrackMoves(diceValue, currentPlayer, position);
				}
				
				if(canMoveFromTrackToLane(diceValue, currentPlayer, position))
				{
					System.out.println("CAN MOVE FROM TRACK TO LANE");
					setPlayerTrackToLaneMoves(diceValue, currentPlayer, position);
				}
				
				if(canMoveFromTrackToPocket(diceValue, currentPlayer, position))
				{
					System.out.println("CAN MOVE FROM TRACK TO POCKET");
					setPlayerTrackToPocketMoves(currentPlayer, position);
				}
			}
		}
		
		for(int position = 1; position <= 5; position++)
		{
			if(board.getLane(currentPlayer).getSquareAt(position).getPawnCount() > 0)
			{
				if(canMoveFromLaneToPocket(diceValue, currentPlayer, position))
				{
					System.out.println("CAN MOVE FROM LANE TO POCKET");
					setPlayerLaneToPocketMoves(diceValue, currentPlayer, position);
				}
				
				if(canMoveInsideLane(diceValue, currentPlayer, position))
				{
					System.out.println("CAN MOVE INSIDE LANE");
					setPlayerLaneToLaneMoves(diceValue, currentPlayer, position);
				}
			}
		}
		
	}
	
	private void setPlayerLaneToPocketMoves(int diceValue, PlayerColor currentPlayer, int pawnPosition) {
		GamePanel.laneView.setSquareHighlight(currentPlayer, pawnPosition);
		
		MoveFromLaneToPocketAction action;
		
		try {
			action = new MoveFromLaneToPocketAction(board.getLane(currentPlayer), pawnPosition, board.getPocket(currentPlayer), moveFromLaneToPocketActionListener);

			Coordinate coordinates = GamePanel.laneView.getPawnCoordinate(currentPlayer, pawnPosition);
			int pawnX = (int) (coordinates.getX() / ConstantsEnum.squareSize + 1);
			int pawnY = (int) (coordinates.getY() / ConstantsEnum.squareSize + 1);
			ActionManager.getInstance().registerAction(pawnX, pawnY, action);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void setPlayerLaneToLaneMoves(int diceValue, PlayerColor currentPlayer, int pawnPosition) {
		
		GamePanel.laneView.setSquareHighlight(currentPlayer, pawnPosition);
		
		MoveFromLaneToLaneAction action;
		
		try {
			int lanePosition = pawnPosition + diceValue;
			action = new MoveFromLaneToLaneAction(board.getLane(currentPlayer), pawnPosition, lanePosition, moveFromLaneToLaneActionListener);

			Coordinate coordinates = GamePanel.laneView.getPawnCoordinate(currentPlayer, pawnPosition);
			int pawnX = (int) (coordinates.getX() / ConstantsEnum.squareSize + 1);
			int pawnY = (int) (coordinates.getY() / ConstantsEnum.squareSize + 1);
			ActionManager.getInstance().registerAction(pawnX, pawnY, action);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void setPlayerTrackToPocketMoves(PlayerColor currentPlayer, int pawnPosition) {
		Square origin = board.getTrack().getSquareAt(pawnPosition);
		
		GamePanel.trackView.setSquareHighlight(pawnPosition);
		
		MoveFromTrackToPocketAction action;
		
		try {
			action = new MoveFromTrackToPocketAction(origin, board.getPocket(currentPlayer), moveFromTrackToPocketActionListener);

			Coordinate coordinates = GamePanel.trackView.getPawnCoordinate(pawnPosition);
			int pawnX = (int) (coordinates.getX() / ConstantsEnum.squareSize + 1);
			int pawnY = (int) (coordinates.getY() / ConstantsEnum.squareSize + 1);
			ActionManager.getInstance().registerAction(pawnX, pawnY, action);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void setPlayerTrackToLaneMoves(int diceValue, PlayerColor currentPlayer, int pawnPosition) {
		Square origin = board.getTrack().getSquareAt(pawnPosition);
		
		GamePanel.trackView.setSquareHighlight(pawnPosition);
		
		MoveFromTrackToLaneAction action;
		
		try {
			int lanePosition = pawnPosition + diceValue - getPositionOfLastSquareOfPlayer(currentPlayer);
			action = new MoveFromTrackToLaneAction(origin, board.getLane(currentPlayer), lanePosition, moveFromTrackToLaneActionListener);

			Coordinate coordinates = GamePanel.trackView.getPawnCoordinate(pawnPosition);
			int pawnX = (int) (coordinates.getX() / ConstantsEnum.squareSize + 1);
			int pawnY = (int) (coordinates.getY() / ConstantsEnum.squareSize + 1);
			ActionManager.getInstance().registerAction(pawnX, pawnY, action);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void setPlayerTrackToTrackMoves(int diceValue, PlayerColor currentPlayer, int pawnPosition) 
	{			
		Square origin = board.getTrack().getSquareAt(pawnPosition);
		
		Square destination;
		if(pawnPosition+diceValue>52) destination = board.getTrack().getSquareAt(pawnPosition+diceValue-52);
		else destination = board.getTrack().getSquareAt(pawnPosition+diceValue);
				
		GamePanel.trackView.setSquareHighlight(pawnPosition);
		
		MoveFromTrackToTrackAction action;
		
		try {
			action = new MoveFromTrackToTrackAction(board, origin, destination, moveFromTrackToTrackActionListener);

			Coordinate coordinates = GamePanel.trackView.getPawnCoordinate(pawnPosition);
			int pawnX = (int) (coordinates.getX() / ConstantsEnum.squareSize + 1);
			int pawnY = (int) (coordinates.getY() / ConstantsEnum.squareSize + 1);
			ActionManager.getInstance().registerAction(pawnX, pawnY, action);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private boolean hasMove(int diceValue, PlayerColor currentPlayer)
	{
		if(canMoveFromYardToTrack(diceValue, currentPlayer))
		{
			return true;
		}
		
		for(int position = 1; position <= 52; position++)
		{
			Square origin = board.getTrack().getSquareAt(position);
			if(origin.getPawnCount() > 0 && origin.getPawnsColor() == currentPlayer)
			{
				if(canMoveInsideTrack(diceValue, currentPlayer, position))
				{
					return true;
				}
				
				if(canMoveFromTrackToLane(diceValue, currentPlayer, position))
				{
					return true;
				}
				
				if(canMoveFromTrackToPocket(diceValue, currentPlayer, position))
				{
					return true;
				}
			}
		}
		
		for(int position = 1; position <= 5; position++)
		{
			if(board.getLane(currentPlayer).getSquareAt(position).getPawnCount() > 0)
			{
				if(canMoveFromLaneToPocket(diceValue, currentPlayer, position))
				{
					return true;
				}
				
				if(canMoveInsideLane(diceValue, currentPlayer, position))
				{
					return true;
				}
			}
		}
		
		return false;
	}
	
	private int getPositionOfLastSquareOfPlayer(PlayerColor currentPlayer){
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
	
	private boolean canMoveFromLaneToPocket(int diceValue, PlayerColor currentPlayer, int pawnPosition) {
		if(pawnPosition + diceValue == 6)
		{
			return true;
		}
		
		return false;
	}

	private boolean canMoveInsideLane(int diceValue, PlayerColor currentPlayer, int pawnPosition) {
		if(pawnPosition + diceValue < 6)
		{
			Square destination = board.getLane(currentPlayer).getSquareAt(pawnPosition + diceValue);
			if(destination.getPawnCount() < 2) return true;
		}
		
		return false;		
	}

	private boolean canMoveFromTrackToLane(int diceValue, PlayerColor currentPlayer, int pawnPosition) {
		int lastSquareOfCurrentPlayer = getPositionOfLastSquareOfPlayer(currentPlayer);
		
		for(int j = 0; j < diceValue; j++)
		{
			if(pawnPosition + j == lastSquareOfCurrentPlayer) //Se ele chega na �ltima casa com um n�mero inferior ao tirado do dado, ele entra na lane.
			{ 
				Square destination;
				
				if(diceValue!=6) 
				{
					destination = board.getLane(currentPlayer).getSquareAt(pawnPosition + diceValue - lastSquareOfCurrentPlayer);
				}
				else
				{
					return false; //destination � o pocket.
				}
				
				if(destination.getPawnCount() < 2) return true;
				else return false;
			}
		}
		
		return false;
	}
	
	private boolean canMoveFromTrackToPocket(int diceValue, PlayerColor currentPlayer, int pawnPosition) {
		int lastSquareOfCurrentPlayer = getPositionOfLastSquareOfPlayer(currentPlayer);
		
		if(pawnPosition == lastSquareOfCurrentPlayer && diceValue == 6) //est� na �ltima casa e tirou 6
		{
			return true;
		}
		
		return false;
	}

	private boolean canMoveInsideTrack(int diceValue, PlayerColor currentPlayer, int pawnPosition) {
		int lastSquareOfCurrentPlayer = getPositionOfLastSquareOfPlayer(currentPlayer);
		
		Square destination;
		if(pawnPosition+diceValue>52) destination = board.getTrack().getSquareAt(pawnPosition+diceValue-52);
		else destination = board.getTrack().getSquareAt(pawnPosition+diceValue);
				
		for(int j = 0; j < diceValue; j++){
			if(pawnPosition + j == lastSquareOfCurrentPlayer) return false; //Se ele chega na �ltima casa com um n�mero inferior ao tirado do dado, ele entra na lane. Logo, n�o pode continuar na track.
		}
				
		if(destination.getPawnCount() < 2) return true;
		
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
