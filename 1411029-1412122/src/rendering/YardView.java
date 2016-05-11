package rendering;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.geom.Ellipse2D;
import java.awt.geom.Rectangle2D;

import boardInfo.Board;
import playerInfo.PlayerColor;
import utils.Coordinate;

public class YardView extends View {

	private Board board;
	
	public YardView(Board board)
	{
		this.board = board;
	}
	
	private Coordinate getCoordinates(int i)
	{
		double coordinateX = (i-1) % 2;
		double coordinateY = (i-1) / 2;
		
		if(i > 2)
		{
			coordinateX = i % 2;
		}
		
		if(i == 2 || i == 3) coordinateX = (coordinateX+1)*rectSize - yardSize;
		if(i == 3 || i == 4) coordinateY = (coordinateY+1)*rectSize - yardSize;
		
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
					yardSize, 
					yardSize
			);
			
			g2d.fill(yard);
			g2d.setColor(Color.BLACK);
			g2d.draw(yard);
			
			int pawns = board.getYard(playerColor).getCount();
			
			for(int j = 0; j < pawns; j++)
			{
				int k = 0;
				if(j > 1) k = 1;
				
				g2d.setPaint(color.darker());
				g2d.fill(new Ellipse2D.Double((1.05*squareSize) + coordinate.getX() + (2.95 * squareSize) * (j % 2), (1.05*squareSize) + coordinate.getY() + (2.95 * squareSize) * k, 0.9 * squareSize, 0.9 * squareSize));
			}
		}
	}

}
