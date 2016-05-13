package rendering;

import java.awt.Graphics2D;

import boardInfo.Square;
import boardInfo.Track;
import playerInfo.PlayerColor;

public class TrackView extends View 
{
	private Track track;
	
	public TrackView(Track track)
	{
		this.track = track;
	}
	
	private void renderGreenAreaTrack(Graphics2D g2d)
	{
		int i = 5, j = 7;
		
		for(float y = 0; y < yardSize; y += squareSize)
		{
			new SquareView(track.getSquareAt(1 + i), yardSize, y, null).render(g2d);
			new SquareView(track.getSquareAt(1 + j), yardSize + 2 * squareSize, y, null).render(g2d);
			
			i--;
			j++;
		}
		
		new SquareView(track.getSquareAt(7), yardSize + squareSize, 0, null).render(g2d);
	}
	
	private void renderYellowAreaTrack(Graphics2D g2d)
	{	
		int i = 1, j = 13;
		
		for(float x = yardSize + 3 * squareSize; x < yardSize + 9 * squareSize; x += squareSize)
		{
			new SquareView(track.getSquareAt(13 + i), x, yardSize, null).render(g2d);
			new SquareView(track.getSquareAt(13 + j), x, yardSize + 2 * squareSize, null).render(g2d);
			
			i++;
			j--;
		}
		
		new SquareView(track.getSquareAt(20), yardSize + 8 * squareSize, yardSize + squareSize, null).render(g2d);
	}
	
	private void renderBlueAreaTrack(Graphics2D g2d)
	{
		int i = 13, j = 1;
		
		for(float y = yardSize + 3 * squareSize; y < yardSize + 9 * squareSize; y += squareSize)
		{
			new SquareView(track.getSquareAt(26 + i), yardSize, y, null).render(g2d);
			new SquareView(track.getSquareAt(26 + j), yardSize + 2 * squareSize, y, null).render(g2d);
			
			i--;
			j++;
		}
		
		new SquareView(track.getSquareAt(33), yardSize + squareSize, yardSize + 8 * squareSize, null).render(g2d);
	}
	
	private void renderRedAreaTrack(Graphics2D g2d)
	{
		int i = 8, j = 6;
		
		for(float x = 0; x < squareSize + 5 * squareSize; x += squareSize)
		{
			new SquareView(track.getSquareAt(39 + i), x, yardSize, null).render(g2d);
			new SquareView(track.getSquareAt(39 + j), x, yardSize + 2 * squareSize, null).render(g2d);
			
			i++;
			j--;
		}
		
		new SquareView(track.getSquareAt(46), 0, yardSize + squareSize, null).render(g2d);
	}
	
	@Override
	public void render(Graphics2D g2d) {
		renderGreenAreaTrack(g2d);
		renderYellowAreaTrack(g2d);
		renderBlueAreaTrack(g2d);
		renderRedAreaTrack(g2d);
	}

}
