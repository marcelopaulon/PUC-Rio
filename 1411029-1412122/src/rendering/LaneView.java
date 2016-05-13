package rendering;

import java.awt.Color;
import java.awt.Graphics2D;

import boardInfo.Lane;
import boardInfo.Square;
import playerInfo.PlayerColor;

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
	}
	
	private void renderGreenLane(Graphics2D g2d)
	{
		float x = yardSize + squareSize;
		int position = 0;
		
		for(float y = squareSize; y < yardSize; y += squareSize)
		{
			new SquareView(greenLane.getSquareAt(position), x, y, Color.GREEN).render(g2d);
			position++;
		}
	}
	
	private void renderYellowLane(Graphics2D g2d)
	{
		float y = yardSize + squareSize;
		int position = 0;
		
		for(float x = yardSize + 7 * squareSize; x >= yardSize + 3 * squareSize; x -= squareSize)
		{
			new SquareView(yellowLane.getSquareAt(position), x, y, Color.YELLOW).render(g2d);
			position++;
		}
	}
	
	private void renderBlueLane(Graphics2D g2d)
	{
		float x = yardSize + squareSize;
		int position = 0;
		
		for(float y = yardSize + 7 * squareSize; y >= yardSize + 3 * squareSize; y -= squareSize)
		{
			new SquareView(blueLane.getSquareAt(position), x, y, Color.BLUE).render(g2d);
			position++;
		}
	}
	
	private void renderRedLane(Graphics2D g2d)
	{
		float y = yardSize + squareSize;
		int position = 0;
		
		for(float x = squareSize; x < squareSize + 5 * squareSize; x += squareSize)
		{
			new SquareView(redLane.getSquareAt(position), x, y, Color.RED).render(g2d);
			position++;
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
