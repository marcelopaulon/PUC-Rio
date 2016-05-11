package rendering;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.geom.Rectangle2D;

public class SquareView extends View {

	private float x;
	private float y;
	private Color fillColor;
	
	public SquareView(float x, float y, Color fillColor)
	{
		this.x = x;
		this.y = y;
		this.fillColor = fillColor;
	}
	
	@Override
	public void render(Graphics2D g2d) {
		if(fillColor != null)
		{
			g2d.setPaint(fillColor);
			g2d.fill(new Rectangle2D.Float(x, y, squareSize, squareSize));
		}
		
		g2d.setColor(Color.BLACK);
		g2d.draw(new Rectangle2D.Float(x, y, squareSize, squareSize));
	}

}
