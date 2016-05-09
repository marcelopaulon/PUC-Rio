package rendering;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.geom.Rectangle2D;

import playerInfo.PlayerColor;
import utils.Coordinate;

public class YardView extends View {

	private Coordinate getCoordinates(int i)
	{
		double coordinateX = (i-1) % 2;
		double coordinateY = (i-1) / 2;
		
		if(i > 2)
		{
			coordinateX = i % 2;
		}
		
		if(i == 2 || i == 3) coordinateX = (coordinateX+1)*rectSizeX - yardSizeX;
		if(i == 3 || i == 4) coordinateY = (coordinateY+1)*rectSizeY - yardSizeY;
		
		return new Coordinate(coordinateX, coordinateY);
	}
	
	public void render(Graphics2D g2d) {
		for(int i = 1; i <= 4; i++)
		{
			PlayerColor playerColor = PlayerColor.get(i);
			Color color = PlayerColor.getColor(playerColor);

			Coordinate coordinate = getCoordinates(i);
			
			g2d.setPaint(color);
			Rectangle2D.Double yard = new Rectangle2D.Double(
					coordinate.getX(),
					coordinate.getY(),
					yardSizeX, 
					yardSizeY
			);
			
			g2d.fill(yard);
			g2d.setColor(Color.BLACK);
			g2d.draw(yard);
		}
	}

}
