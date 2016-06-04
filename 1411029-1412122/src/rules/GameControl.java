package rules;

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
import utils.ConstantsEnum.Action;
import utils.ConstantsEnum.SquareType;
import utils.Coordinate;

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
			{
				board.nextPlayer();
			}
			else if(Dice.getCurValue() == 6)
			{
				Notifications.notify6RepeatMove();
			}
			
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

			// O jogador que capturou poder� avan�ar 20 casas com qualquer um de
			// seus pe�es.
			if (capturedPawn && hasMove(20, board.getCurrentPlayer()))
			{
				Notifications.notifyCaptureBonus();
				board.setCurrentAction(Action.SELECTPAWNBONUS20);
				setPlayer20Moves(board.getCurrentPlayer());
			}
			else
			{
				if (Dice.getCurValue() != 6 || Dice.getConsecutive6() == 3)
				{
					board.nextPlayer();
				}
				else if(Dice.getCurValue() == 6)
				{
					Notifications.notify6RepeatMove();
				}
				
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
			{
				board.nextPlayer();
			}
			else if(Dice.getCurValue() == 6)
			{
				Notifications.notify6RepeatMove();
			}
			
			setPlayerDice();

			GamePanel.requestRedraw();
		}

	};
	
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
				endGame();
			}
			else
			{
				// O jogador que chegar com um pe�o � sua casa final avan�ar� 10
				// casas com algum de seus outros pe�es.
				if (hasMove(10, board.getCurrentPlayer()))
				{
					Notifications.notifyExitBonus();
					board.setCurrentAction(Action.SELECTPAWNBONUS10);
					setPlayer10Moves(board.getCurrentPlayer());
				}
				else
				{
					if (Dice.getCurValue() != 6 || Dice.getConsecutive6() == 3)
					{
						board.nextPlayer();
					}
					else if(Dice.getCurValue() == 6)
					{
						Notifications.notify6RepeatMove();
					}
					
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
			board.setCurrentAction(Action.SELECTPAWN); //Dado j� foi rolado

			// Se obtiver um 6 pela terceira vez consecutiva, o �ltimo de seus
			// pe�es que foi movimentado voltar� para a casa inicial. No caso do
			// �ltimo pe�o movimentado j� ter chegado at� uma das casas da reta
			// final, ele permanecer� em sua posi��o, n�o retornado � casa
			// inicial.
			if (diceValue == 6 && Dice.getConsecutive6() == 3)
			{
				if (hasMove(diceValue, currentPlayer))
				{
					Notifications.notify3Consecutive6Penalty();
					removeLastMovedPawn();
				}

				board.nextPlayer();
				setPlayerDice();
				board.setCurrentAction(Action.ROLLDICE);
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
				{
					board.nextPlayer();
				}
				else
				{
					Notifications.notify6RepeatMove();
				}
				
				board.setCurrentAction(Action.ROLLDICE);
				setPlayerDice();
			}
			
			GamePanel.requestRedraw();
		}
	};

	private void removeLastMovedPawn()
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
				Notifications.notifyError(e.getMessage());
				e.printStackTrace();
			}

			board.getYard(currentPlayer).addPawn();
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

		// Se um jogador obtiver um 6 ap�s lan�ar o dado, avan�ar sete casas
		// caso n�o tenha mais pe�es para retirar de sua casa inicial.
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
			Notifications.notifyError(e.getMessage());
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
			Notifications.notifyError(e.getMessage());
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
			Notifications.notifyError(e.getMessage());
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
			Notifications.notifyError(e.getMessage());
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
			Notifications.notifyError(e.getMessage());
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
			Notifications.notifyError(e.getMessage());
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
			Notifications.notifyError(e.getMessage());
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
	
	private void endGame()
	{
		String[] positions = BoardPositions.getPlayerPositions(board);
		board.setCurrentAction(Action.GAMEENDED);
		Notifications.notifyGameEnd(positions);
	}

	public void loadMap(Board savedMap, int currentDiceValue)
	{
		ActionManager.getInstance().resetActions();
		GamePanel.resetHighlights();

		this.board = savedMap;

		GamePanel.getInstance().setBoard(savedMap);

		GamePanel.requestViewReset();

		Action currentAction = savedMap.getCurrentAction();
		
		switch(currentAction)
		{
			case GAMEENDED:
				endGame();
				break;
			case ROLLDICE:
				setPlayerDice();
				break;
			case SELECTPAWN:
				if (hasMove(currentDiceValue, board.getCurrentPlayer()))
				{
					setPlayerMoves(currentDiceValue, board.getCurrentPlayer());
				}
				else
				{
					Notifications.notifyError("Erro ao definir a��o de sele��o");
				}
				break;
			case SELECTPAWNBONUS10:
				setPlayer10Moves(board.getCurrentPlayer());
				break;
			case SELECTPAWNBONUS20:
				setPlayer20Moves(board.getCurrentPlayer());
				break;
			default:
				Notifications.notifyError("Erro ao definir a��o");
				break;
		}
			

		GamePanel.requestRedraw();
	}
}
