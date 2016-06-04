package rules;

import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Map.Entry;

import boardInfo.Board;
import game.Notifications;
import playerInfo.PlayerColor;
import utils.Utils;

public class BoardPositions
{
	public static int getPositionOfLastSquareOfPlayer(PlayerColor currentPlayer)
	{
		switch (currentPlayer)
		{
			case BLUE:
				return 33;
			case GREEN:
				return 7;
			case RED:
				return 46;
			case YELLOW:
				return 20;
			default:
				Notifications.notifyError("getPositionOfLastSquareOfPlayer -> invalid color");
				return -1;
		}
	}

	public static int getInitialSquarePosition(PlayerColor color)
	{
		switch (color)
		{
			case BLUE:
				return 35;
			case GREEN:
				return 9;
			case RED:
				return 48;
			case YELLOW:
				return 22;
		}

		Notifications.notifyError("getInitialSquarePosition -> invalid color");
		return -1;
	}

	public static PlayerColor isInitialSquarePosition(int position)
	{
		switch (position)
		{
			case 35:
				return PlayerColor.BLUE;
			case 9:
				return PlayerColor.GREEN;
			case 48:
				return PlayerColor.RED;
			case 22:
				return PlayerColor.YELLOW;
		}

		return null;
	}

	public static boolean isShelterPosition(int position)
	{
		if (isInitialSquarePosition(position) != null)
		{
			return true;
		}

		if (position == 5 || position == 18 || position == 31 || position == 44)
		{
			return true;
		}

		return false;
	}

	public static PlayerColor isLastSquarePosition(int position)
	{
		switch (position)
		{
			case 33:
				return PlayerColor.BLUE;
			case 7:
				return PlayerColor.GREEN;
			case 46:
				return PlayerColor.RED;
			case 20:
				return PlayerColor.YELLOW;
		}

		return null;
	}
	
	public static String[] getPlayerPositions(Board board)
	{
		String[] positions = new String[4];
		PlayerColor winner = board.getCurrentPlayer();
		positions[0] = PlayerColor.getPlayerName(winner);

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
			positions[i] = PlayerColor.getPlayerName((PlayerColor) orderedPlayers.get(i - 1).getKey());
		}

		return positions;
	}
}
