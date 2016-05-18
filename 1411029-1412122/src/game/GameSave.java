package game;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
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

public class GameSave {
	public static Board loadFromFile(File file) throws FileNotFoundException
	{
		Scanner scannerFile = new Scanner(file);
		String[] saveFile = null;
		try {
			saveFile = Cryptography.decrypt(scannerFile.nextLine()).split("\n");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
		scannerFile.close();
				
		String parser;
		int line = 0;
		
		PlayerColor currentPlayer;
		int currentDice;
		Track track = new Track();
		Yard[] yards = new Yard[4];
		Pocket[] pockets = new Pocket[4];
		Lane[] lanes = new Lane[4];
		
		//initializing Lanes
		for(int i = 0; i < lanes.length; i++) lanes[i] = new Lane(PlayerColor.get(i+1));
		
		//Reading Current Player
		parser = saveFile[line];
		parser = parser.substring(10);
		
		currentPlayer = PlayerColor.get(Integer.valueOf(parser));
		
		//Reading Current Dice
		line++;
		parser = saveFile[line];
		parser = parser.substring(8);
		
		currentDice = Integer.valueOf(parser);
		
		//Reading Track Positions
		line++;
		parser = saveFile[line];
		
		while(parser.contains("TRACK")){
			Integer trackPosition = Integer.valueOf(parser.substring(parser.indexOf("=") + 1, parser.indexOf("&"))); //trackPosition is always between = and &
			parser = parser.substring(parser.indexOf("&") + 1); //removing first part of the parser string
			Integer color = Integer.valueOf(parser.substring(parser.indexOf("=") + 1, parser.indexOf("&")));
			Integer count = Integer.valueOf(parser.substring(parser.lastIndexOf("=") + 1));
			
			for(int i = 0; i < count; i++) track.addPawn(Integer.valueOf(trackPosition), PlayerColor.get(color));
			
			line++;
			parser = saveFile[line];
		}
		
		//Reading Lanes, Yards and Pockets
		while(parser.contains("YARD")){
			Integer yardColor = Integer.valueOf(parser.substring(parser.indexOf("=") + 1, parser.indexOf("&"))); //yardColor is always between = and & 
			Integer yardCount = Integer.valueOf(parser.substring(parser.lastIndexOf("=") + 1));
			
			line++;
			parser = saveFile[line];
			
			Integer pocketColor = Integer.valueOf(parser.substring(parser.indexOf("=") + 1, parser.indexOf("&")));
			Integer pocketCount = Integer.valueOf(parser.substring(parser.lastIndexOf("=") + 1));
			
			yards[yardColor-1] = new Yard();
			
			for(int i = 0; i < 4 - yardCount; i++) yards[yardColor-1].removePawn();
			
			pockets[pocketColor-1] = new Pocket();
			for(int i=0; i<pocketCount; i++) pockets[pocketColor-1].addPawn();
			
			if(line + 1 < saveFile.length) 
			{
				line++;
				parser = saveFile[line];
			}
			else
			{
				parser = "END OF FILE";
			}
			
			if(parser.contains("LANE")){
				Integer lanePosition = Integer.valueOf(parser.substring(parser.indexOf("=") + 1, parser.indexOf("&"))); //lanePosition is always between = and &
				parser = parser.substring(parser.indexOf("&") + 1); //removing first part of the parser string
				Integer color = Integer.valueOf(parser.substring(parser.indexOf("=") + 1, parser.indexOf("&")));
				Integer count = Integer.valueOf(parser.substring(parser.lastIndexOf("=") + 1));
				
				for(int i = 0; i < count; i++) lanes[color-1].addPawn();
				
				if(line + 1 < saveFile.length) 
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
		return new Board(track, lanes, yards, pockets, currentPlayer);
	}
	
	public static void saveToFile(Board board, File file) throws IOException
	{
		StringBuilder saveString = new StringBuilder();
		
		saveString.append("CURPLAYER=" + board.getCurrentPlayer().asInt());
		saveString.append("\nCURDICE=" + Dice.getCurValue());
        
        Track track = board.getTrack();
        
        for (int i = 1; i <= 52; i++) {
        	Square square = track.getSquareAt(i);
        	if(square.getPawnCount() > 0)
        	{
        		saveString.append("\nTRACKPOSITION=" + i + "&COLOR=" + square.getPawnsColor().asInt() + "&COUNT=" + square.getPawnCount());
        	}
		}
        
        for (int i = 1; i <= 4; i++)
        {
        	PlayerColor playerColor = PlayerColor.get(i);
        	
        	Yard yard = board.getYard(playerColor);
        	
        	saveString.append("\nYARDCOLOR=" + playerColor.asInt() + "&COUNT=" + yard.getCount());
        	
        	Pocket pocket = board.getPocket(playerColor);
        	
        	saveString.append("\nPOCKETCOLOR=" + playerColor.asInt() + "&COUNT=" + pocket.getCount());
        	
        	Lane lane = board.getLane(playerColor);
        	
        	for (int j = 1; j <= 5; j++)
        	{
        		Square square = lane.getSquareAt(j);
        		if(square.getPawnCount() > 0)
            	{
        			saveString.append("\nLANEPOSITION=" + j + "&COLOR=" + square.getPawnsColor().asInt() + "&COUNT=" + square.getPawnCount());
            	}
        	}
        }
        
        PrintWriter fileOut = new PrintWriter(file);
		
        try {
			fileOut.write(Cryptography.encrypt(saveString.toString()));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        fileOut.close();
	}
}
