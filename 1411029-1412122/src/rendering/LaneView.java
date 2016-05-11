package rendering;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.geom.Rectangle2D;

public class LaneView extends View {
	
	private void renderGreenLane(Graphics2D g2d)
	{
		float x = yardSizeX + squareSizeX;
		
		for(float y = squareSizeY; y < yardSizeY; y += squareSizeY)
		{
			g2d.setPaint(Color.GREEN);
			g2d.fill(new Rectangle2D.Float(x, y, squareSizeX, squareSizeY));
			g2d.setColor(Color.BLACK);
			g2d.draw(new Rectangle2D.Float(x, y, squareSizeX, squareSizeY));
		}
	}
	
	private void renderYellowLane(Graphics2D g2d)
	{
		float y = yardSizeY + squareSizeY;
		
		for(float x = yardSizeX + 3 * squareSizeX; x < yardSizeX + 8 * squareSizeX; x += squareSizeX)
		{
			g2d.setPaint(Color.YELLOW);
			g2d.fill(new Rectangle2D.Float(x, y, squareSizeX, squareSizeY));
			g2d.setColor(Color.BLACK);
			g2d.draw(new Rectangle2D.Float(x, y, squareSizeX, squareSizeY));
		}
	}
	
	private void renderBlueLane(Graphics2D g2d)
	{
		float x = yardSizeX + squareSizeX;
		
		for(float y = yardSizeY + 3 * squareSizeY; y < yardSizeY + 8 * squareSizeY; y += squareSizeY)
		{
			g2d.setPaint(Color.BLUE);
			g2d.fill(new Rectangle2D.Float(x, y, squareSizeX, squareSizeY));
			g2d.setColor(Color.BLACK);
			g2d.draw(new Rectangle2D.Float(x, y, squareSizeX, squareSizeY));
		}
	}
	
	private void renderRedLane(Graphics2D g2d)
	{
		float y = yardSizeY + squareSizeY;
		
		for(float x = squareSizeX; x < squareSizeX + 5 * squareSizeX; x += squareSizeX)
		{
			g2d.setPaint(Color.RED);
			g2d.fill(new Rectangle2D.Float(x, y, squareSizeX, squareSizeY));
			g2d.setColor(Color.BLACK);
			g2d.draw(new Rectangle2D.Float(x, y, squareSizeX, squareSizeY));
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
