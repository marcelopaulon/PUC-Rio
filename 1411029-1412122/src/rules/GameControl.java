package rules;

import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Map.Entry;

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
import boardInfo.Lane;
import boardInfo.Square;
import boardInfo.Track;
import game.GamePanel;
import game.Notifications;
import playerInfo.PlayerColor;
import rendering.LaneView;
import rendering.TrackView;
import rendering.YardView;
import utils.ConstantsEnum;
import utils.ConstantsEnum.SquareType;
import utils.Coordinate;
import utils.Utils;

public class GameControl
{

	private Board board;

	public static int lastMovedPawnPosition;
	public static SquareType lastMovedPawnDestinationType;

	public GameControl(Board board)
	{
		this.board = board;
	}

	private ActionListener removeFromYardActionListener = new ActionListener() {

		@Override
		public void onActionExecuted(boolean capturedPawn)
		{
			ActionManager actionManager = ActionManager.getInstance();
			actionManager.resetActions();

			GamePanel.resetHighlights();

			if (Dice.getCurValue() != 6 || Dice.getConsecutive6() == 3)
				board.nextPlayer();
			setPlayerDice();
		}

	};

	private ActionListener moveFromTrackToTrackActionListener = new ActionListener() {

		@Override
		public void onActionExecuted(boolean capturedPawn)
		{
			ActionManager actionManager = ActionManager.getInstance();
			actionManager.resetActions();

			GamePanel.resetHighlights();

			System.out.println("Test - track to track action listener executed");

			// O jogador que capturou poderá avançar 20 casas com qualquer um de
			// seus peões.
			if (capturedPawn && hasMove(20, board.getCurrentPlayer()))
			{
				setPlayer20Moves(board.getCurrentPlayer());
			}
			else
			{
				if (Dice.getCurValue() != 6 || Dice.getConsecutive6() == 3)
					board.nextPlayer();
				setPlayerDice();
			}

			GamePanel.requestRedraw();
		}

	};

	private ActionListener moveToLaneActionListener = new ActionListener() {

		@Override
		public void onActionExecuted(boolean capturedPawn)
		{
			ActionManager actionManager = ActionManager.getInstance();
			actionManager.resetActions();

			GamePanel.resetHighlights();

			System.out.println("Test - track to lane action listener executed");

			if (Dice.getCurValue() != 6 || Dice.getConsecutive6() == 3)
				board.nextPlayer();
			setPlayerDice();

			GamePanel.requestRedraw();
		}

	};

	private String getPlayerName(PlayerColor color)
	{
		String player = null;

		if (color == PlayerColor.GREEN)
			player = "verde";
		else if (color == PlayerColor.YELLOW)
			player = "amarelo";
		else if (color == PlayerColor.BLUE)
			player = "azul";
		else if (color == PlayerColor.RED)
			player = "vermelho";
		else
		{
			try
			{
				throw new Exception("Erro - jogador inválido");
			} catch (Exception e)
			{
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

		for (int i = 1; i <= 4; i++)
		{
			if (i == winner.asInt())
				continue;
			distances.put(PlayerColor.get(i), board.getDistanceToPocketSum(PlayerColor.get(i)));
		}

		ArrayList<Entry<?, Integer>> orderedPlayers = Utils.sortHashtableByIntegerValue(distances);

		for (int i = 1; i <= 3; i++)
		{
			positions[i] = getPlayerName((PlayerColor) orderedPlayers.get(i - 1).getKey());
		}

		return positions;
	}

	private ActionListener moveToPocketActionListener = new ActionListener() {

		@Override
		public void onActionExecuted(boolean capturedPawn)
		{
			ActionManager actionManager = ActionManager.getInstance();
			actionManager.resetActions();

			GamePanel.resetHighlights();

			System.out.println("Test - to pocket action listener executed");

			if (MovementRules.gameFinished(board.getPocket(board.getCurrentPlayer())))
			{
				String[] positions = getPlayerPositions();
				Notifications.notifyGameEnd(positions);
			}
			else
			{
				// O jogador que chegar com um peão à sua casa final avançará 10
				// casas com algum de seus outros peões.
				if (hasMove(10, board.getCurrentPlayer()))
				{
					setPlayer10Moves(board.getCurrentPlayer());
				}
				else
				{
					if (Dice.getCurValue() != 6 || Dice.getConsecutive6() == 3)
						board.nextPlayer();
					setPlayerDice();
				}
			}

			GamePanel.requestRedraw();
		}

	};

	private ActionListener diceActionListener = new ActionListener() {

		@Override
		public void onActionExecuted(boolean capturedPawn)
		{
			ActionManager actionManager = ActionManager.getInstance();
			actionManager.resetActions();

			GamePanel.resetHighlights();

			System.out.println("Dice rolled");

			int diceValue = Dice.getCurValue();
			PlayerColor currentPlayer = board.getCurrentPlayer();

			// Se obtiver um 6 pela terceira vez consecutiva, o último de seus
			// peões que foi movimentado voltará para a casa inicial. No caso do
			// último peão movimentado já ter chegado até uma das casas da reta
			// final, ele permanecerá em sua posição, não retornado à casa
			// inicial.
			if (diceValue == 6 && Dice.getConsecutive6() == 3)
			{
				if (hasMove(diceValue, currentPlayer))
				{
					moveLastMovedPawnToInitialSquare();
				}

				board.nextPlayer();
				setPlayerDice();
				GamePanel.requestRedraw();
				return;
			}

			if (hasMove(diceValue, currentPlayer))
			{
				setPlayerMoves(diceValue, currentPlayer);
			}
			else
			{
				if (diceValue != 6)
					board.nextPlayer();
				setPlayerDice();
			}

			GamePanel.requestRedraw();
		}
	};

	private void moveLastMovedPawnToInitialSquare()
	{
		if (lastMovedPawnDestinationType == SquareType.TRACKSQUARE)
		{
			PlayerColor currentPlayer = board.getCurrentPlayer();
			Track track = board.getTrack();

			try
			{
				track.removePawn(lastMovedPawnPosition, currentPlayer);
			} catch (Exception e)
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			track.addPawn(BoardPositions.getInitialSquarePosition(currentPlayer), currentPlayer);

		}
	}

	private void setPlayer20Moves(PlayerColor currentPlayer)
	{
		System.out.println("----------------- SET 20 BONUS MOVES ---------------------------");
		setTrackMoves(currentPlayer, 20);
	}

	private void setPlayer10Moves(PlayerColor currentPlayer)
	{
		System.out.println("----------------- SET 10 BONUS MOVES ---------------------------");
		setTrackMoves(currentPlayer, 10);
	}

	private void setTrackMoves(PlayerColor currentPlayer, int steps)
	{
		for (int position = 1; position <= 52; position++)
		{
			Square origin = board.getTrack().getSquareAt(position);
			if (origin.getPawnCount() > 0 && origin.getPawnsColors().contains(currentPlayer))
			{
				if (MovementRules.canMoveInsideTrack(board.getTrack(), steps, currentPlayer, position))
				{
					System.out.println("CAN MOVE INSIDE TRACK");
					setPlayerTrackToTrackMoves(steps, currentPlayer, position);
				}

				if (MovementRules.canMoveFromTrackToLane(board.getLane(currentPlayer), steps, currentPlayer, position))
				{
					System.out.println("CAN MOVE FROM TRACK TO LANE");
					setPlayerTrackToLaneMoves(steps, currentPlayer, position);
				}

				if (MovementRules.canMoveFromTrackToPocket(steps, currentPlayer, position))
				{
					System.out.println("CAN MOVE FROM TRACK TO POCKET");
					setPlayerTrackToPocketMoves(currentPlayer, position);
				}
			}
		}
	}

	private void setLaneMoves(PlayerColor currentPlayer, int diceValue)
	{
		for (int position = 1; position <= 5; position++)
		{
			Lane lane = board.getLane(currentPlayer);
			if (lane.getSquareAt(position).getPawnCount() > 0)
			{
				if (MovementRules.canMoveFromLaneToPocket(diceValue, currentPlayer, position))
				{
					System.out.println("CAN MOVE FROM LANE TO POCKET");
					setPlayerLaneToPocketMoves(diceValue, currentPlayer, position);
				}

				if (MovementRules.canMoveInsideLane(lane, diceValue, currentPlayer, position))
				{
					System.out.println("CAN MOVE INSIDE LANE");
					setPlayerLaneToLaneMoves(diceValue, currentPlayer, position);
				}
			}
		}
	}

	private void setPlayerMoves(int diceValue, PlayerColor currentPlayer)
	{
		System.out.println("----------------- SET ---------------------------");

		// Se um jogador obtiver um 6 após lançar o dado, avançar sete casas
		// caso não tenha mais peões para retirar de sua casa inicial.
		if (diceValue == 6 && board.getYard(currentPlayer).getCount() == 0 && Dice.getConsecutive6() < 3)
		{
			diceValue = 7;
		}

		if (MovementRules.canMoveFromYardToTrack(board.getYard(currentPlayer), diceValue, currentPlayer))
		{
			System.out.println("CAN MOVE FROM YARD TO TRACK");
			setPlayerYardToTrackMoves();
		}

		setTrackMoves(currentPlayer, diceValue);

		setLaneMoves(currentPlayer, diceValue);

	}

	private void setPlayerLaneToPocketMoves(int diceValue, PlayerColor currentPlayer, int pawnPosition)
	{
		LaneView.setSquareHighlight(currentPlayer, pawnPosition);

		MoveFromLaneToPocketAction action;

		try
		{
			action = new MoveFromLaneToPocketAction(board.getLane(currentPlayer), pawnPosition,
					board.getPocket(currentPlayer), moveToPocketActionListener);

			Coordinate coordinates = LaneView.getPawnCoordinate(currentPlayer, pawnPosition);
			int pawnX = (int) (coordinates.getX() / ConstantsEnum.squareSize + 1);
			int pawnY = (int) (coordinates.getY() / ConstantsEnum.squareSize + 1);
			ActionManager.getInstance().registerAction(pawnX, pawnY, action);
		} catch (Exception e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void setPlayerLaneToLaneMoves(int diceValue, PlayerColor currentPlayer, int pawnPosition)
	{

		LaneView.setSquareHighlight(currentPlayer, pawnPosition);

		MoveFromLaneToLaneAction action;

		try
		{
			int lanePosition = pawnPosition + diceValue;
			action = new MoveFromLaneToLaneAction(board.getLane(currentPlayer), pawnPosition, lanePosition,
					moveToLaneActionListener);

			Coordinate coordinates = LaneView.getPawnCoordinate(currentPlayer, pawnPosition);
			int pawnX = (int) (coordinates.getX() / ConstantsEnum.squareSize + 1);
			int pawnY = (int) (coordinates.getY() / ConstantsEnum.squareSize + 1);
			ActionManager.getInstance().registerAction(pawnX, pawnY, action);
		} catch (Exception e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void setPlayerTrackToPocketMoves(PlayerColor currentPlayer, int pawnPosition)
	{
		Square origin = board.getTrack().getSquareAt(pawnPosition);

		TrackView.setSquareHighlight(pawnPosition);

		MoveFromTrackToPocketAction action;

		try
		{
			action = new MoveFromTrackToPocketAction(origin, board.getPocket(currentPlayer),
					moveToPocketActionListener);

			Coordinate coordinates = TrackView.getPawnCoordinate(pawnPosition);
			int pawnX = (int) (coordinates.getX() / ConstantsEnum.squareSize + 1);
			int pawnY = (int) (coordinates.getY() / ConstantsEnum.squareSize + 1);
			ActionManager.getInstance().registerAction(pawnX, pawnY, action);
		} catch (Exception e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void setPlayerTrackToLaneMoves(int diceValue, PlayerColor currentPlayer, int pawnPosition)
	{
		Square origin = board.getTrack().getSquareAt(pawnPosition);

		TrackView.setSquareHighlight(pawnPosition);

		MoveFromTrackToLaneAction action;

		try
		{
			int lanePosition = pawnPosition + diceValue - BoardPositions.getPositionOfLastSquareOfPlayer(currentPlayer);
			action = new MoveFromTrackToLaneAction(origin, board.getLane(currentPlayer), lanePosition,
					moveToLaneActionListener);

			Coordinate coordinates = TrackView.getPawnCoordinate(pawnPosition);
			int pawnX = (int) (coordinates.getX() / ConstantsEnum.squareSize + 1);
			int pawnY = (int) (coordinates.getY() / ConstantsEnum.squareSize + 1);
			ActionManager.getInstance().registerAction(pawnX, pawnY, action);
		} catch (Exception e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void setPlayerTrackToTrackMoves(int diceValue, PlayerColor currentPlayer, int pawnPosition)
	{
		Square origin = board.getTrack().getSquareAt(pawnPosition);

		int destinationPos;

		if (pawnPosition + diceValue > 52)
		{
			destinationPos = pawnPosition + diceValue - 52;
		}
		else
		{
			destinationPos = pawnPosition + diceValue;
		}

		Square destination = board.getTrack().getSquareAt(destinationPos);

		TrackView.setSquareHighlight(pawnPosition);

		MoveFromTrackToTrackAction action;

		try
		{
			boolean shouldRemoveOpponent = true;

			if (BoardPositions.isShelterPosition(destinationPos))
			{
				shouldRemoveOpponent = false;
			}

			action = new MoveFromTrackToTrackAction(board, origin, destination, destinationPos, shouldRemoveOpponent,
					moveFromTrackToTrackActionListener);

			Coordinate coordinates = TrackView.getPawnCoordinate(pawnPosition);
			int pawnX = (int) (coordinates.getX() / ConstantsEnum.squareSize + 1);
			int pawnY = (int) (coordinates.getY() / ConstantsEnum.squareSize + 1);
			ActionManager.getInstance().registerAction(pawnX, pawnY, action);
		} catch (Exception e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private boolean hasMove(int diceValue, PlayerColor currentPlayer)
	{
		if (MovementRules.canMoveFromYardToTrack(board.getYard(currentPlayer), diceValue, currentPlayer))
		{
			return true;
		}

		for (int position = 1; position <= 52; position++)
		{
			Square origin = board.getTrack().getSquareAt(position);
			if (origin.getPawnCount() > 0 && origin.getPawnsColors().contains(currentPlayer))
			{
				if (MovementRules.canMoveInsideTrack(board.getTrack(), diceValue, currentPlayer, position))
				{
					return true;
				}

				if (MovementRules.canMoveFromTrackToLane(board.getLane(currentPlayer), diceValue, currentPlayer,
						position))
				{
					return true;
				}

				if (MovementRules.canMoveFromTrackToPocket(diceValue, currentPlayer, position))
				{
					return true;
				}
			}
		}

		for (int position = 1; position <= 5; position++)
		{
			Lane lane = board.getLane(currentPlayer);

			if (lane.getSquareAt(position).getPawnCount() > 0)
			{
				if (MovementRules.canMoveFromLaneToPocket(diceValue, currentPlayer, position))
				{
					return true;
				}

				if (MovementRules.canMoveInsideLane(lane, diceValue, currentPlayer, position))
				{
					return true;
				}
			}
		}

		return false;
	}

	private void setPlayerDice()
	{
		RollDiceAction action;

		try
		{
			action = new RollDiceAction(diceActionListener);

			Coordinate diceCoordinates = YardView.getYardDiceCoordinates(board.getCurrentPlayer());
			int x = (int) diceCoordinates.getX();
			int y = (int) diceCoordinates.getY();

			ActionManager.getInstance().registerAction(x, y, action);
			ActionManager.getInstance().registerAction(x + 1, y, action);
			ActionManager.getInstance().registerAction(x - 1, y, action);
			ActionManager.getInstance().registerAction(x, y + 1, action);
			ActionManager.getInstance().registerAction(x, y - 1, action);

			ActionManager.getInstance().registerAction(x + 1, y + 1, action);
			ActionManager.getInstance().registerAction(x - 1, y - 1, action);
			ActionManager.getInstance().registerAction(x + 1, y - 1, action);
			ActionManager.getInstance().registerAction(x - 1, y + 1, action);
		} catch (Exception e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void setPlayerYardToTrackMoves()
	{
		YardView.setYardHighlight(board.getCurrentPlayer());

		MoveFromYardToTrackAction action;

		try
		{
			action = new MoveFromYardToTrackAction(board, removeFromYardActionListener);

			Coordinate coordinates = YardView.getYardHighlightPawnCoordinate();
			int pawnX = (int) (coordinates.getX() / ConstantsEnum.squareSize + 1);
			int pawnY = (int) (coordinates.getY() / ConstantsEnum.squareSize + 1);
			ActionManager.getInstance().registerAction(pawnX, pawnY, action);
		} catch (Exception e)
		{
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

	public void loadMap(Board savedMap, int currentDiceValue)
	{
		ActionManager.getInstance().resetActions();
		GamePanel.resetHighlights();

		this.board = savedMap;

		GamePanel.getInstance().setBoard(savedMap);

		GamePanel.requestViewReset();

		if (hasMove(currentDiceValue, board.getCurrentPlayer()))
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
