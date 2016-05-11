package rendering;

import java.awt.Color;
import java.awt.Graphics2D;

import playerInfo.PlayerColor;
import utils.Coordinate;

public class PocketView extends View {

	private Coordinate[] getCoordinates(int i)
	{
		Coordinate coordinates[] = new Coordinate[3];
		
		coordinates[0] = new Coordinate((int) (rectSize - 3*yardSize/12),
						(int) (rectSize - 3*yardSize/12));
		
		coordinates[1] = new Coordinate(rectSize, rectSize);
					
		if(i == 1 || i == 3)
		{
			coordinates[2] = new Coordinate((int) (rectSize - 3*yardSize/12),
							(int) (rectSize + 3*yardSize/12));
			
			if(i == 3)
			{
				coordinates[0].setX(coordinates[0].getX() + yardSize / 2);
				coordinates[2].setX(coordinates[2].getX() + yardSize / 2);
			}
		}
		else
		{
			coordinates[2] = new Coordinate((int) (rectSize + 3*yardSize/12),
							(int) (rectSize - 3*yardSize/12));
			
			if(i == 4)
			{
				coordinates[0].setY(coordinates[0].getY() + yardSize / 2);
				coordinates[2].setY(coordinates[2].getY() + yardSize / 2);
			}
		}
		
		return coordinates;
	}
	
	public void render(Graphics2D g2d)
	{
		for(int i = 1; i <= 4; i++){
			Coordinate coordinates[] = getCoordinates(i);
			
			int coordinateXs[] = new int[] { (int) coordinates[0].getX(), (int) coordinates[1].getX(), (int) coordinates[2].getX() };
			int coordinateYs[] = new int[] { (int) coordinates[0].getY(), (int) coordinates[1].getY(), (int) coordinates[2].getY() };
			
			Color color = Color.RED;
			
			if(i > 1)
			{
				PlayerColor playerColor = PlayerColor.get(i);
				color = PlayerColor.getColor(playerColor);
			}
			
			g2d.setPaint(color);
			g2d.fillPolygon(coordinateXs, coordinateYs, 3);
			g2d.setColor(Color.BLACK);
			g2d.drawPolygon(coordinateXs, coordinateYs, 3);
		}
	}
	
}
