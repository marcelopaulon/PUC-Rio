package rendering;

import java.awt.Color;
import java.awt.Graphics2D;

public class LaneView extends View {
	
	private void renderGreenLane(Graphics2D g2d)
	{
		float x = yardSize + squareSize;
		
		for(float y = squareSize; y < yardSize; y += squareSize)
		{
			new SquareView(x, y, Color.GREEN).render(g2d);
		}
	}
	
	private void renderYellowLane(Graphics2D g2d)
	{
		float y = yardSize + squareSize;
		
		for(float x = yardSize + 3 * squareSize; x < yardSize + 8 * squareSize; x += squareSize)
		{
			new SquareView(x, y, Color.YELLOW).render(g2d);
		}
	}
	
	private void renderBlueLane(Graphics2D g2d)
	{
		float x = yardSize + squareSize;
		
		for(float y = yardSize + 3 * squareSize; y < yardSize + 8 * squareSize; y += squareSize)
		{
			new SquareView(x, y, Color.BLUE).render(g2d);
		}
	}
	
	private void renderRedLane(Graphics2D g2d)
	{
		float y = yardSize + squareSize;
		
		for(float x = squareSize; x < squareSize + 5 * squareSize; x += squareSize)
		{
			new SquareView(x, y, Color.RED).render(g2d);
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
