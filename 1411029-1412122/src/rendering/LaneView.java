package rendering;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.geom.Rectangle2D;

public class LaneView extends View {
	
	private void renderGreenLane(Graphics2D g2d)
	{
		float x = yardSize + squareSize;
		
		for(float y = squareSize; y < yardSize; y += squareSize)
		{
			g2d.setPaint(Color.GREEN);
			g2d.fill(new Rectangle2D.Float(x, y, squareSize, squareSize));
			g2d.setColor(Color.BLACK);
			g2d.draw(new Rectangle2D.Float(x, y, squareSize, squareSize));
		}
	}
	
	private void renderYellowLane(Graphics2D g2d)
	{
		float y = yardSize + squareSize;
		
		for(float x = yardSize + 3 * squareSize; x < yardSize + 8 * squareSize; x += squareSize)
		{
			g2d.setPaint(Color.YELLOW);
			g2d.fill(new Rectangle2D.Float(x, y, squareSize, squareSize));
			g2d.setColor(Color.BLACK);
			g2d.draw(new Rectangle2D.Float(x, y, squareSize, squareSize));
		}
	}
	
	private void renderBlueLane(Graphics2D g2d)
	{
		float x = yardSize + squareSize;
		
		for(float y = yardSize + 3 * squareSize; y < yardSize + 8 * squareSize; y += squareSize)
		{
			g2d.setPaint(Color.BLUE);
			g2d.fill(new Rectangle2D.Float(x, y, squareSize, squareSize));
			g2d.setColor(Color.BLACK);
			g2d.draw(new Rectangle2D.Float(x, y, squareSize, squareSize));
		}
	}
	
	private void renderRedLane(Graphics2D g2d)
	{
		float y = yardSize + squareSize;
		
		for(float x = squareSize; x < squareSize + 5 * squareSize; x += squareSize)
		{
			g2d.setPaint(Color.RED);
			g2d.fill(new Rectangle2D.Float(x, y, squareSize, squareSize));
			g2d.setColor(Color.BLACK);
			g2d.draw(new Rectangle2D.Float(x, y, squareSize, squareSize));
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
