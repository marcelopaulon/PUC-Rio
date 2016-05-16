package game;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import boardInfo.Board;
import boardInfo.Dice;
import boardInfo.Lane;
import boardInfo.Pocket;
import boardInfo.Square;
import boardInfo.Track;
import boardInfo.Yard;
import playerInfo.PlayerColor;

public class GameSave {
	public static Board loadFromFile(File file)
	{
		// TODO: Raynan
		return null;
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
