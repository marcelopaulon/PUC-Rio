package rendering;

import java.awt.Graphics2D;
import java.util.Hashtable;

import boardInfo.Lane;
import gfx.GameColor;
import utils.Coordinate;

public class LaneView extends View {
	
	private Lane greenLane;
	private Lane yellowLane;
	private Lane blueLane;
	private Lane redLane;
	
	public LaneView(Lane greenLane, Lane yellowLane, Lane blueLane, Lane redLane)
	{
		this.greenLane = greenLane;
		this.yellowLane = yellowLane;
		this.blueLane = blueLane;
		this.redLane = redLane;
		
		calculateGreenLaneCoordinates();
		calculateYellowLaneCoordinates();
		calculateBlueLaneCoordinates();
		calculateRedLaneCoordinates();
	}
		
	private Hashtable<Integer, Coordinate> greenLaneCoordinates = new Hashtable<Integer, Coordinate>();
	private Hashtable<Integer, Coordinate> yellowLaneCoordinates = new Hashtable<Integer, Coordinate>();
	private Hashtable<Integer, Coordinate> blueLaneCoordinates = new Hashtable<Integer, Coordinate>();
	private Hashtable<Integer, Coordinate> redLaneCoordinates = new Hashtable<Integer, Coordinate>();
	
	private void calculateGreenLaneCoordinates()
	{
		float x = yardSize + squareSize;
		int position = 1;
		
		for(float y = squareSize; y < yardSize; y += squareSize)
		{
			greenLaneCoordinates.put(position, new Coordinate(x, y));
			position++;
		}
	}
	
	private void calculateYellowLaneCoordinates()
	{
		float y = yardSize + squareSize;
		int position = 1;
		
		for(float x = yardSize + 7 * squareSize; x >= yardSize + 3 * squareSize; x -= squareSize)
		{
			yellowLaneCoordinates.put(position, new Coordinate(x, y));
			position++;
		}
	}
	
	private void calculateBlueLaneCoordinates()
	{
		float x = yardSize + squareSize;
		int position = 1;
		
		for(float y = yardSize + 7 * squareSize; y >= yardSize + 3 * squareSize; y -= squareSize)
		{
			blueLaneCoordinates.put(position, new Coordinate(x, y));
			position++;
		}
	}
	
	private void calculateRedLaneCoordinates()
	{
		float y = yardSize + squareSize;
		int position = 1;
		
		for(float x = squareSize; x < squareSize + 5 * squareSize; x += squareSize)
		{
			redLaneCoordinates.put(position, new Coordinate(x, y));
			position++;
		}
	}
	
	private void renderGreenLane(Graphics2D g2d)
	{
		for(int i = 1; i <= 5; i++)
		{
			Coordinate coordinate = greenLaneCoordinates.get(i);
			new SquareView(greenLane.getSquareAt(i), (int) coordinate.getX(), (int) coordinate.getY(), GameColor.Green, false).render(g2d);
		}
	}
	
	private void renderYellowLane(Graphics2D g2d)
	{
		for(int i = 1; i <= 5; i++)
		{
			Coordinate coordinate = yellowLaneCoordinates.get(i);
			new SquareView(yellowLane.getSquareAt(i), (int) coordinate.getX(), (int) coordinate.getY(), GameColor.Yellow, false).render(g2d);
		}
	}
	
	private void renderBlueLane(Graphics2D g2d)
	{
		for(int i = 1; i <= 5; i++)
		{
			Coordinate coordinate = blueLaneCoordinates.get(i);
			new SquareView(blueLane.getSquareAt(i), (int) coordinate.getX(), (int) coordinate.getY(), GameColor.Blue, false).render(g2d);
		}
	}
	
	private void renderRedLane(Graphics2D g2d)
	{
		for(int i = 1; i <= 5; i++)
		{
			Coordinate coordinate = redLaneCoordinates.get(i);
			new SquareView(redLane.getSquareAt(i), (int) coordinate.getX(), (int) coordinate.getY(), GameColor.Red, false).render(g2d);
		}
	}
	
	@Override
	public void render(Graphics2D g2d) {
		renderGreenLane(g2d);
		renderYellowLane(g2d);
		renderBlueLane(g2d);
		renderRedLane(g2d);
	}

}
