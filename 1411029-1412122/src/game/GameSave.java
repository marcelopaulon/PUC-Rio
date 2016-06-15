package game;

import java.io.File;
import java.io.PrintWriter;
import java.util.LinkedList;
import java.util.List;
import java.util.Scanner;

import boardInfo.Board;
import boardInfo.Dice;
import boardInfo.Lane;
import boardInfo.Pocket;
import boardInfo.Square;
import boardInfo.Track;
import boardInfo.Yard;
import playerInfo.PlayerColor;
import utils.Cryptography;
import utils.ConstantsEnum.Action;

class GameSave
{
	// TODO - Add support to saving/loading during bonus actions (+10 / +20 after entering pocket and capturing opponent)
	public static Board loadFromFile(File file) throws Exception
	{
		Scanner scannerFile = new Scanner(file);
		String[] saveFile = null;

		try
		{
			String line = scannerFile.nextLine();
			if(!scannerFile.hasNextLine())
			{
				saveFile = Cryptography.decrypt(line).split("\n");
			}
			else
			{
				List<String> save = new LinkedList<String>();
				save.add(line);
				
				while(scannerFile.hasNext())
				{
					line = scannerFile.nextLine();
					save.add(line);
				}
				
				saveFile = save.toArray(new String[0]);
			}
		} catch (Exception e) 
		{
			throw e;
		} finally
		{
			scannerFile.close();
		}

		String parser;
		int line = 0;

		PlayerColor currentPlayer;
		Action currentAction;
		int currentDice, consecutive6;
		Track track = new Track();
		Yard[] yards = new Yard[4];
		Pocket[] pockets = new Pocket[4];
		Lane[] lanes = new Lane[4];

		// initializing Lanes
		for (int i = 0; i < lanes.length; i++)
			lanes[i] = new Lane(PlayerColor.get(i + 1));

		// Reading Current Player
		parser = saveFile[line];
		parser = parser.substring(10);

		currentPlayer = PlayerColor.get(Integer.valueOf(parser));

		// Reading Current Action
		line++;
		parser = saveFile[line];
		parser = parser.substring(10);
			
		currentAction = Action.valueOf(parser);
		
		// Reading Current Dice
		line++;
		parser = saveFile[line];
		parser = parser.substring(8);
		
		currentDice = Integer.valueOf(parser);
		
		// Reading Current Consecutive 6's
		line++;
		parser = saveFile[line];
		parser = parser.substring(13);

		consecutive6 = Integer.valueOf(parser);

		// Reading Track Positions
		line++;
		parser = saveFile[line];

		while (parser.contains("TRACK"))
		{
			// trackPosition is always between = and &
			Integer trackPosition = Integer.valueOf(parser.substring(parser.indexOf("=") + 1, parser.indexOf("&")));

			// removing the first part of the parser string
			parser = parser.substring(parser.indexOf("&") + 1);

			Integer color = Integer.valueOf(parser.substring(parser.indexOf("=") + 1, parser.indexOf("&")));
			Integer count = Integer.valueOf(parser.substring(parser.lastIndexOf("=") + 1));

			for (int i = 0; i < count; i++)
				track.addPawn(Integer.valueOf(trackPosition), PlayerColor.get(color));

			line++;
			parser = saveFile[line];
		}

		// Reading Lanes, Yards and Pockets
		while (parser.contains("YARD"))
		{
			// yardColor is always between = and &
			Integer yardColor = Integer.valueOf(parser.substring(parser.indexOf("=") + 1, parser.indexOf("&")));

			Integer yardCount = Integer.valueOf(parser.substring(parser.lastIndexOf("=") + 1));

			line++;
			parser = saveFile[line];

			Integer pocketColor = Integer.valueOf(parser.substring(parser.indexOf("=") + 1, parser.indexOf("&")));
			Integer pocketCount = Integer.valueOf(parser.substring(parser.lastIndexOf("=") + 1));

			yards[yardColor - 1] = new Yard();

			for (int i = 0; i < 4 - yardCount; i++)
				yards[yardColor - 1].removePawn();

			pockets[pocketColor - 1] = new Pocket(PlayerColor.get(pocketColor));
			for (int i = 0; i < pocketCount; i++)
				pockets[pocketColor - 1].addPawn();

			if (line + 1 < saveFile.length)
			{
				line++;
				parser = saveFile[line];
			}
			else
			{
				parser = "END OF FILE";
			}

			while (parser.contains("LANE"))
			{
				// lanePosition is always between = and &
				Integer lanePosition = Integer.valueOf(parser.substring(parser.indexOf("=") + 1, parser.indexOf("&")));

				// removing the first part of the parser string
				parser = parser.substring(parser.indexOf("&") + 1);

				Integer color = Integer.valueOf(parser.substring(parser.indexOf("=") + 1, parser.indexOf("&")));
				Integer count = Integer.valueOf(parser.substring(parser.lastIndexOf("=") + 1));

				for (int i = 0; i < count; i++)
					lanes[color - 1].addPawn(lanePosition);

				if (line + 1 < saveFile.length)
				{
					line++;
					parser = saveFile[line];
				}
				else
				{
					parser = "END OF FILE";
				}
			}
		}

		Dice.setCurValue(currentDice);
		Dice.setConsecutive6(consecutive6);
		return new Board(track, lanes, yards, pockets, currentPlayer, currentAction);
	}

	public static void saveToFile(Board board, File file, boolean shouldEncryptSave) throws Exception
	{
		StringBuilder saveString = new StringBuilder();

		saveString.append("CURPLAYER=" + board.getCurrentPlayer().asInt());
		saveString.append("\nCURACTION=" + board.getCurrentAction());
		saveString.append("\nCURDICE=" + Dice.getCurValue());
		saveString.append("\nCONSECUTIVE6=" + Dice.getConsecutive6());

		Track track = board.getTrack();

		for (int i = 1; i <= 52; i++)
		{
			Square square = track.getSquareAt(i);
			List<PlayerColor> colors = square.getPawnsColors();

			final int pos = i;
			colors.forEach(color ->
			{
				saveString.append("\nTRACKPOSITION=" + pos + "&COLOR=" + color.asInt() + "&COUNT="
						+ square.getPawnCountByColor(color));
			});
		}

		for (int i = 1; i <= 4; i++)
		{
			PlayerColor playerColor = PlayerColor.get(i);

			Yard yard = board.getYard(playerColor);

			saveString.append("\nYARDCOLOR=" + playerColor.asInt() + "&COUNT=" + yard.getCount());

			Pocket pocket = board.getPocket(playerColor);

			saveString.append("\nPOCKETCOLOR=" + playerColor.asInt() + "&COUNT=" + pocket.getPawnCount());

			Lane lane = board.getLane(playerColor);

			for (int j = 1; j <= 5; j++)
			{
				Square square = lane.getSquareAt(j);
				if (square.getPawnCount() > 0)
				{
					saveString.append("\nLANEPOSITION=" + j + "&COLOR=" + square.getPawnsColors().get(0).asInt()
							+ "&COUNT=" + square.getPawnCount());
				}
			}
		}

		PrintWriter fileOut = new PrintWriter(file);

		if(shouldEncryptSave)
		{
			fileOut.write(Cryptography.encrypt(saveString.toString()));
		}
		else
		{
			fileOut.write(saveString.toString());
		}

		fileOut.close();
	}
}
