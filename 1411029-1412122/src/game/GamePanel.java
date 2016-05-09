package game;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.Rectangle;
import java.awt.RenderingHints;
import java.awt.geom.Rectangle2D;

import javax.swing.JLabel;
import javax.swing.JPanel;

import boardInfo.Board;
import playerInfo.PlayerColor;

public class GamePanel extends JPanel {

	// Game Board
	private Board board;

	private final int rectSizeX = 255;
	private final int rectSizeY = 255;
	
	private final float yardSizeX = (rectSizeX / 15) * 12;
	private final float yardSizeY = (rectSizeY / 15) * 12;
	
	public GamePanel()
	{
		super();
		
	    setBackground(Color.white);
	    setForeground(Color.white);

		// Create the game board
		board = new Board();
	}
	
	private void renderPockets(Graphics2D g2d)
	{
		for(int i = 1; i <= 4; i++){
			int coordinateXs[] = new int[3];
			int coordinateYs[] = new int[3];
			
			coordinateXs[2] = rectSizeX;
			coordinateYs[2] = rectSizeY;
			
			if(i == 1 || i == 3)
			{
				coordinateXs[0] = (int) (rectSizeX - 3*yardSizeX/12);
				coordinateYs[0] = (int) (rectSizeY - 3*yardSizeY/12);
				
				coordinateXs[1] = (int) (rectSizeX - 3*yardSizeX/12);
				coordinateYs[1] = (int) (rectSizeY + 3*yardSizeY/12);
				
				if(i == 3)
				{
					coordinateXs[0] += yardSizeX / 2;
					coordinateXs[1] += yardSizeX / 2;
				}
			}
			else
			{
				coordinateXs[0] = (int) (rectSizeX - 3*yardSizeX/12);
				coordinateYs[0] = (int) (rectSizeY - 3*yardSizeY/12);
				
				coordinateXs[1] = (int) (rectSizeX + 3*yardSizeX/12);
				coordinateYs[1] = (int) (rectSizeY - 3*yardSizeY/12);
				
				if(i == 4)
				{
					coordinateYs[0] += yardSizeY / 2;
					coordinateYs[1] += yardSizeY / 2;
				}
			}
			
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
	
	private void renderBoard(Graphics2D g2d)
	{
		for(int i = 1; i <= 4; i++)
		{
			PlayerColor playerColor = PlayerColor.get(i);
			Color color = PlayerColor.getColor(playerColor);

			float coordinateX = (i-1) % 2;
			float coordinateY = (i-1) / 2;
			
			if(i > 2)
			{
				coordinateX = i % 2;
			}
			
			g2d.setColor(Color.BLACK);
			Rectangle2D.Double area = new Rectangle2D.Double(coordinateX*rectSizeX, coordinateY*rectSizeY, rectSizeX, rectSizeY);
			//g2d.draw(area);

			if(i == 2 || i == 3) coordinateX =  (coordinateX+1)*rectSizeX - yardSizeX;
			if(i == 3 || i == 4) coordinateY =  (coordinateY+1)*rectSizeY - yardSizeY;

			g2d.setPaint(color);
			Rectangle2D.Double yard = new Rectangle2D.Double(coordinateX, coordinateY, yardSizeX, yardSizeY);
			g2d.fill(yard);
			g2d.setColor(Color.BLACK);
			g2d.draw(yard);
		}
		
		renderPockets(g2d);
	}
	
	
	
	@Override
	public void paintComponent(Graphics g) {
		super.paintComponent(g);
		Graphics2D g2d = (Graphics2D)g;
		
	    g2d.setRenderingHint(RenderingHints.KEY_ANTIALIASING,
	            RenderingHints.VALUE_ANTIALIAS_ON);

		renderBoard(g2d);
	}
}
