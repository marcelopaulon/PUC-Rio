package game;

import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Map.Entry;

import javax.swing.JOptionPane;

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
import boardInfo.Track;
import playerInfo.PlayerColor;
import utils.ConstantsEnum;
import utils.ConstantsEnum.SquareType;
import utils.Coordinate;
import utils.Utils;

public class GameControl {

	private Board board;
	
	public static int lastMovedPawnPosition;
	public static SquareType lastMovedPawnDestinationType; 
		
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
			
			if(Dice.getCurValue() != 6 || Dice.getConsecutive6() == 3) board.nextPlayer();
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
			
			if(Dice.getCurValue() != 6 || Dice.getConsecutive6() == 3) board.nextPlayer();
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
			
			if(Dice.getCurValue() != 6 || Dice.getConsecutive6() == 3) board.nextPlayer();
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
			
			if(Dice.getCurValue() != 6 || Dice.getConsecutive6() == 3) board.nextPlayer();
			setPlayerDice();
			
			GamePanel.requestRedraw();
		}

	};
	
	private boolean gameFinished() {
		if(board.getPocket(board.getCurrentPlayer()).getPawnCount() == 4)
		{
			return true;
		}
		
		return false;
	}
	
	private String getPlayerName(PlayerColor color)
	{
		String player = null;
		
		if(color == PlayerColor.GREEN) player = "verde";
		else if(color == PlayerColor.YELLOW) player = "amarelo";
		else if(color == PlayerColor.BLUE) player = "azul";
		else if(color == PlayerColor.RED) player = "vermelho";
		else {
			try {
				throw new Exception("Erro - jogador invï¿½lido");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return player;
	}
	
	private String[] getPlayerPositions()
	{
		String[] positions = new String[4];
		PlayerColor winner = board.getCurrentPlayer();
		positions[0] = getPlayerName(winner);
		
		Hashtable<PlayerColor, Integer> distances = new Hashtable<PlayerColor, Integer>();
		
		for(int i = 1; i <= 4; i++)
		{
			if(i == winner.asInt()) continue;
			distances.put(PlayerColor.get(i), board.getDistanceToPocketSum(PlayerColor.get(i)));
		}
		
		ArrayList<Entry<?, Integer>> orderedPlayers = Utils.sortHashtableByIntegerValue(distances);
		
		for(int i = 1; i <= 3; i++)
		{
			positions[i] = getPlayerName((PlayerColor) orderedPlayers.get(i - 1).getKey());
		}
		
		return positions;
	}
	
	private void notifyGameEnd() {
		
		String[] positions = getPlayerPositions();
		
		String message = "O jogador " + positions[0] + " venceu esta partida.\n2º lugar: " + positions[1] + "\n3º lugar: " + positions[2] + "\n4º lugar: " + positions[3] + "\nObrigado por ludar.";
		
		JOptionPane.showMessageDialog(GamePanel.getInstance(), message, "Fim de jogo",
				JOptionPane.WARNING_MESSAGE);
	}
	
	private ActionListener moveFromLaneToPocketActionListener = new ActionListener()
	{

		@Override
		public void onActionExecuted() {
			ActionManager actionManager = ActionManager.getInstance();
			actionManager.resetActions();
			
			resetHighlights();
			
			System.out.println("Test - lane to pocket action listener executed");
			
			if(gameFinished())
			{
				notifyGameEnd();
			}
			else
			{
				if(hasMove(10, board.getCurrentPlayer())) // O jogador que chegar com um peão à sua casa final poderá avançará 10 casas com algum de seus outros peões.
				{
					setPlayer10Moves(board.getCurrentPlayer());
				}
				else
				{
					if(Dice.getCurValue() != 6 || Dice.getConsecutive6() == 3) board.nextPlayer();
					setPlayerDice();
				}
			}
			
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
			
			if(gameFinished())
			{
				notifyGameEnd();
			}
			else
			{
				if(hasMove(10, board.getCurrentPlayer())) // O jogador que chegar com um peão à sua casa final poderá avançará 10 casas com algum de seus outros peões.
				{
					setPlayer10Moves(board.getCurrentPlayer());
				}
				else
				{
					if(Dice.getCurValue() != 6 || Dice.getConsecutive6() == 3) board.nextPlayer();
					setPlayerDice();
				}
			}
			
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
			
			if(diceValue == 6 && Dice.getConsecutive6() == 3) // Se obtiver um 6 pela terceira vez consecutiva, o último de seus peões que foi movimentado voltará para a casa inicial. No caso do último peão movimentado já ter chegado até uma das casas da reta final, ele permanecerá em sua posição, não retornado à casa inicial.
			{
				if(hasMove(diceValue, currentPlayer))
				{
					moveLastMovedPawnToInitialSquare();
				}
				
				board.nextPlayer();
				setPlayerDice();
				GamePanel.requestRedraw();
				return;
			}
			
			if(hasMove(diceValue, currentPlayer))
			{
				setPlayerMoves(diceValue, currentPlayer);
			}
			else
			{
				if(diceValue != 6) board.nextPlayer();
				setPlayerDice();
			}
			
			GamePanel.requestRedraw();
		}
	};
	
	private void moveLastMovedPawnToInitialSquare() {
		if(lastMovedPawnDestinationType == SquareType.TRACKSQUARE)
		{
			PlayerColor currentPlayer = board.getCurrentPlayer();
			Track track = board.getTrack();
			
			try {
				track.removePawn(lastMovedPawnPosition, currentPlayer);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			track.addPawn(BoardPositions.getInitialSquarePosition(currentPlayer), currentPlayer);
			
		}
	}
	
	private void setPlayer10Moves(PlayerColor currentPlayer) {
		System.out.println("----------------- SET 10 MOVES ---------------------------");
		
		for(int position = 1; position <= 52; position++)
		{
			Square origin = board.getTrack().getSquareAt(position);
			if(origin.getPawnCount() > 0 && origin.getPawnsColors().contains(currentPlayer))
			{
				if(canMoveInsideTrack(10, currentPlayer, position))
				{
					System.out.println("CAN MOVE INSIDE TRACK");
					setPlayerTrackToTrackMoves(10, currentPlayer, position);
				}
				
				if(canMoveFromTrackToLane(10, currentPlayer, position))
				{
					System.out.println("CAN MOVE FROM TRACK TO LANE");
					setPlayerTrackToLaneMoves(10, currentPlayer, position);
				}
				
				if(canMoveFromTrackToPocket(10, currentPlayer, position))
				{
					System.out.println("CAN MOVE FROM TRACK TO POCKET");
					setPlayerTrackToPocketMoves(currentPlayer, position);
				}
			}
		}
	}
	
	private void setPlayerMoves(int diceValue, PlayerColor currentPlayer)
	{
		System.out.println("----------------- SET ---------------------------");
		
		if(diceValue == 6 && board.getYard(currentPlayer).getCount() == 0 && Dice.getConsecutive6() < 3) diceValue = 7; //Se um jogador obtiver um 6 após lançar o dado, avançar sete casas caso não tenha mais peões para retirar de sua casa inicial.
				
		if(canMoveFromYardToTrack(diceValue, currentPlayer))
		{
			System.out.println("CAN MOVE FROM YARD TO TRACK");
			setPlayerYardToTrackMoves();
		}
		
		for(int position = 1; position <= 52; position++)
		{
			Square origin = board.getTrack().getSquareAt(position);
			if(origin.getPawnCount() > 0 && origin.getPawnsColors().contains(currentPlayer))
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
			int lanePosition = pawnPosition + diceValue - BoardPositions.getPositionOfLastSquareOfPlayer(currentPlayer);
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
		
		int destinationPos;
		
		if(pawnPosition+diceValue>52) 
		{
			destinationPos = pawnPosition + diceValue - 52;
		}
		else 
		{
			destinationPos = pawnPosition + diceValue;
		}
		
		Square destination = board.getTrack().getSquareAt(destinationPos);
				
		GamePanel.trackView.setSquareHighlight(pawnPosition);
		
		MoveFromTrackToTrackAction action;
		
		try {
			boolean shouldRemoveOpponent = true;
			
			if(BoardPositions.isShelterPosition(destinationPos))
			{
				shouldRemoveOpponent = false;
			}
			
			action = new MoveFromTrackToTrackAction(board, origin, destination, destinationPos, shouldRemoveOpponent, moveFromTrackToTrackActionListener);

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
			if(origin.getPawnCount() > 0 && origin.getPawnsColors().contains(currentPlayer))
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
	
	private boolean opponentHasBarrierAt(int position)
	{
		if(BoardPositions.isShelterPosition(position))
		{
			return false;
		}
		
		Square square = board.getTrack().getSquareAt(position);
				
		if(square.getPawnCount() > 1 && square.getPawnsColors().get(0) != board.getCurrentPlayer())
		{
			return true;
		}
		
		return false;
	}
	
	private boolean currentPlayerHasBarrierAt(int position)
	{
		if(BoardPositions.isShelterPosition(position))
		{
			return false;
		}
		
		Square square = board.getTrack().getSquareAt(position);
		
		if(square.getPawnCountByColor(board.getCurrentPlayer()) > 1)
		{
			return true;
		}
		
		return false;
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
		int lastSquareOfCurrentPlayer = BoardPositions.getPositionOfLastSquareOfPlayer(currentPlayer);
		
		for(int j = 0; j < diceValue; j++)
		{
			if(pawnPosition + j == lastSquareOfCurrentPlayer) //Se ele chega na ï¿½ltima casa com um nï¿½mero inferior ao tirado do dado, ele entra na lane.
			{ 
				Square destination;
				
				if(diceValue!=6) 
				{
					destination = board.getLane(currentPlayer).getSquareAt(pawnPosition + diceValue - lastSquareOfCurrentPlayer);
				}
				else
				{
					return false; //destination ï¿½ o pocket.
				}
				
				if(destination.getPawnCount() < 2) return true;
				else return false;
			}
		}
		
		return false;
	}
	
	private boolean canMoveFromTrackToPocket(int diceValue, PlayerColor currentPlayer, int pawnPosition) {
		int lastSquareOfCurrentPlayer = BoardPositions.getPositionOfLastSquareOfPlayer(currentPlayer);
		
		if(pawnPosition == lastSquareOfCurrentPlayer && diceValue == 6) //estï¿½ na ï¿½ltima casa e tirou 6
		{
			return true;
		}
		
		return false;
	}

	private boolean canMoveInsideTrack(int diceValue, PlayerColor currentPlayer, int pawnPosition) {
		int lastSquareOfCurrentPlayer = BoardPositions.getPositionOfLastSquareOfPlayer(currentPlayer);
		
		Square destination;
		if(pawnPosition+diceValue>52) destination = board.getTrack().getSquareAt(pawnPosition+diceValue-52);
		else destination = board.getTrack().getSquareAt(pawnPosition+diceValue);
				
		for(int j = 0; j < diceValue; j++){
			if(pawnPosition + j == lastSquareOfCurrentPlayer) return false; //Se ele chega na ï¿½ltima casa com um nï¿½mero inferior ao tirado do dado, ele entra na lane. Logo, nï¿½o pode continuar na track.
			if(pawnPosition + j <= 52 && opponentHasBarrierAt(pawnPosition + j)) return false;
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
