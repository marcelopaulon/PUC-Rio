package rendering;

import java.awt.Graphics2D;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;

import boardInfo.Track;
import rendering.common.View;
import utils.Coordinate;

public class TrackView extends View 
{
	private Track track;
	
	public TrackView(Track track)
	{
		this.track = track;
		calculateGreenAreaCoordinates();
		calculateYellowAreaCoordinates();
		calculateBlueAreaCoordinates();
		calculateRedAreaCoordinates();
	}
	
	private List<Integer> squareHighlight = new ArrayList<Integer>();
	
	private Hashtable<Integer, Coordinate> pawnCoordinates = new Hashtable<Integer, Coordinate>();
	
	private void calculateGreenAreaCoordinates()
	{
		int i = 5, j = 7;
		
		for(float y = 0; y < yardSize; y += squareSize)
		{
			pawnCoordinates.put(1 + i, new Coordinate(yardSize, y));
			pawnCoordinates.put(1 + j, new Coordinate(yardSize + 2 * squareSize, y));
			
			i--;
			j++;
		}
		
		pawnCoordinates.put(7, new Coordinate(yardSize + squareSize, 0));
	}
	
	private void calculateYellowAreaCoordinates()
	{	
		int i = 1, j = 13;
		
		for(float x = yardSize + 3 * squareSize; x < yardSize + 9 * squareSize; x += squareSize)
		{			
			pawnCoordinates.put(13 + i, new Coordinate(x, yardSize));
			pawnCoordinates.put(13 + j, new Coordinate(x, yardSize + 2 * squareSize));
			
			i++;
			j--;
		}
		
		pawnCoordinates.put(20, new Coordinate(yardSize + 8 * squareSize, yardSize + squareSize));
	}
	
	private void calculateBlueAreaCoordinates()
	{
		int i = 13, j = 1;
		
		for(float y = yardSize + 3 * squareSize; y < yardSize + 9 * squareSize; y += squareSize)
		{			
			pawnCoordinates.put(26 + i, new Coordinate(yardSize, y));
			pawnCoordinates.put(26 + j, new Coordinate(yardSize + 2 * squareSize, y));
			
			i--;
			j++;
		}
		
		pawnCoordinates.put(33, new Coordinate(yardSize + squareSize, yardSize + 8 * squareSize));
	}
	
	private void calculateRedAreaCoordinates()
	{
		int i = 8, j = 6;
		
		for(float x = 0; x < squareSize + 5 * squareSize; x += squareSize)
		{			
			pawnCoordinates.put(39 + i, new Coordinate(x, yardSize));
			pawnCoordinates.put(39 + j, new Coordinate(x, yardSize + 2 * squareSize));
			
			i++;
			j--;
		}
		
		pawnCoordinates.put(46, new Coordinate(0, yardSize + squareSize));
	}
	
	@Override
	public void render(Graphics2D g2d) {
		for(int i = 1; i <= 52; i++)
		{
			try {
				Coordinate coordinate = getPawnCoordinate(i);
				new SquareView(track.getSquareAt(i), (int) coordinate.getX(), (int) coordinate.getY(), null, squareHighlight.contains(i)).render(g2d);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	public void setSquareHighlight(int i) {
		squareHighlight.add(i);
	}

	public Coordinate getPawnCoordinate(int i) throws Exception {
		return pawnCoordinates.get(i);
	}

	public void clearSquareHighlight() {
		squareHighlight.clear();
	}

}
