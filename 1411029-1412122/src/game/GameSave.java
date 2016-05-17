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

public class GameSave {
	public static Board loadFromFile(File file) throws FileNotFoundException
	{
		Scanner scanner = new Scanner(file);
		String parser;
		
		PlayerColor currentPlayer;
		int currentDice;
		Track track = new Track();
		Yard[] yards = new Yard[4];
		Pocket[] pockets = new Pocket[4];
		Lane[] lanes = new Lane[4];
		
		//initializing Lanes
		for(int i = 0; i < lanes.length; i++) lanes[i] = new Lane(PlayerColor.get(i+1));
		
		//Reading Current Player
		parser = scanner.nextLine();
		parser = parser.substring(10);
		
		currentPlayer = PlayerColor.get(Integer.valueOf(parser));
		
		//Reading Current Dice
		parser = scanner.nextLine();
		parser = parser.substring(8);
		
		currentDice = Integer.valueOf(parser);
		
		//Reading Track Positions
		parser = scanner.nextLine();
		
		while(parser.contains("TRACK")){
			Integer trackPosition = Integer.valueOf(parser.substring(parser.indexOf("=") + 1, parser.indexOf("&"))); //trackPosition is always between = and &
			parser = parser.substring(parser.indexOf("&") + 1); //removing first part of the parser string
			Integer color = Integer.valueOf(parser.substring(parser.indexOf("=") + 1, parser.indexOf("&")));
			Integer count = Integer.valueOf(parser.substring(parser.lastIndexOf("=") + 1));
			
			for(int i = 0; i < count; i++) track.addPawn(Integer.valueOf(trackPosition), PlayerColor.get(color));
			
			parser = scanner.nextLine();
		}
		
		//Reading Lanes, Yards and Pockets
		while(parser.contains("YARD")){
			Integer yardColor = Integer.valueOf(parser.substring(parser.indexOf("=") + 1, parser.indexOf("&"))); //yardColor is always between = and & 
			Integer yardCount = Integer.valueOf(parser.substring(parser.lastIndexOf("=") + 1));
			
			parser = scanner.nextLine();
			
			Integer pocketColor = Integer.valueOf(parser.substring(parser.indexOf("=") + 1, parser.indexOf("&")));
			Integer pocketCount = Integer.valueOf(parser.substring(parser.lastIndexOf("=") + 1));
			
			yards[yardColor-1] = new Yard();
			for(int i=0; i<yardCount; i++) yards[yardColor-1].addPawn();
			
			pockets[pocketColor-1] = new Pocket();
			for(int i=0; i<pocketCount; i++) pockets[pocketColor-1].addPawn();
			
			if(scanner.hasNextLine()) parser = scanner.nextLine();
			else parser = "END OF FILE";
			
			if(parser.contains("LANE")){
				Integer lanePosition = Integer.valueOf(parser.substring(parser.indexOf("=") + 1, parser.indexOf("&"))); //lanePosition is always between = and &
				parser = parser.substring(parser.indexOf("&") + 1); //removing first part of the parser string
				Integer color = Integer.valueOf(parser.substring(parser.indexOf("=") + 1, parser.indexOf("&")));
				Integer count = Integer.valueOf(parser.substring(parser.lastIndexOf("=") + 1));
				
				for(int i = 0; i < count; i++) lanes[color-1].addPawn();
				
				if(scanner.hasNextLine()) parser = scanner.nextLine();
				else parser = "END OF FILE";				
			}
		}
		
		scanner.close();
		
		Dice.setCurValue(currentDice);
		return new Board(track, lanes, yards, pockets, currentPlayer);
	}
	
	public static void saveToFile(Board board, File file) throws IOException
	{
		PrintWriter fileOut = new PrintWriter(file);
		
        fileOut.write("CURPLAYER=" + board.getCurrentPlayer().asInt());
        fileOut.write("\nCURDICE=" + Dice.getCurValue());
        
        Track track = board.getTrack();
        
        for (int i = 1; i <= 52; i++) {
        	Square square = track.getSquareAt(i);
        	if(square.getPawnCount() > 0)
        	{
        		fileOut.write("\nTRACKPOSITION=" + i + "&COLOR=" + square.getPawnsColor().asInt() + "&COUNT=" + square.getPawnCount());
        	}
		}
        
        for (int i = 1; i <= 4; i++)
        {
        	PlayerColor playerColor = PlayerColor.get(i);
        	
        	Yard yard = board.getYard(playerColor);
        	
        	fileOut.write("\nYARDCOLOR=" + playerColor.asInt() + "&COUNT=" + yard.getCount());
        	
        	Pocket pocket = board.getPocket(playerColor);
        	
        	fileOut.write("\nPOCKETCOLOR=" + playerColor.asInt() + "&COUNT=" + pocket.getCount());
        	
        	Lane lane = board.getLane(playerColor);
        	
        	for (int j = 1; j <= 5; j++)
        	{
        		Square square = lane.getSquareAt(j);
        		if(square.getPawnCount() > 0)
            	{
            		fileOut.write("\nLANEPOSITION=" + j + "&COLOR=" + square.getPawnsColor().asInt() + "&COUNT=" + square.getPawnCount());
            	}
        	}
        }
        
        fileOut.write("\n");
        
        fileOut.close();
	}
}
