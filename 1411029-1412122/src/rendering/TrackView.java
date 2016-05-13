package rendering;

import java.awt.Graphics2D;

import boardInfo.Square;
import playerInfo.PlayerColor;

public class TrackView extends View 
{
	private void renderGreenAreaTrack(Graphics2D g2d)
	{
		for(float y = 0; y < yardSize; y += squareSize)
		{
			new SquareView(new Square(PlayerColor.GREEN), yardSize, y, null).render(g2d);
			new SquareView(new Square(PlayerColor.GREEN), yardSize + 2 * squareSize, y, null).render(g2d);
		}
		
		new SquareView(new Square(PlayerColor.GREEN), yardSize + squareSize, 0, null).render(g2d);
	}
	
	private void renderYellowAreaTrack(Graphics2D g2d)
	{		
		for(float x = yardSize + 3 * squareSize; x < yardSize + 9 * squareSize; x += squareSize)
		{
			new SquareView(new Square(PlayerColor.YELLOW), x, yardSize, null).render(g2d);
			new SquareView(new Square(PlayerColor.YELLOW), x, yardSize + 2 * squareSize, null).render(g2d);
		}
		
		new SquareView(new Square(PlayerColor.YELLOW), yardSize + 8 * squareSize, yardSize + squareSize, null).render(g2d);
	}
	
	private void renderBlueAreaTrack(Graphics2D g2d)
	{
		for(float y = yardSize + 3 * squareSize; y < yardSize + 9 * squareSize; y += squareSize)
		{
			new SquareView(new Square(PlayerColor.BLUE), yardSize, y, null).render(g2d);
			new SquareView(new Square(PlayerColor.BLUE), yardSize + 2 * squareSize, y, null).render(g2d);
		}
		
		new SquareView(new Square(PlayerColor.BLUE), yardSize + squareSize, yardSize + 8 * squareSize, null).render(g2d);
	}
	
	private void renderRedAreaTrack(Graphics2D g2d)
	{
		for(float x = 0; x < squareSize + 5 * squareSize; x += squareSize)
		{
			new SquareView(new Square(PlayerColor.RED), x, yardSize, null).render(g2d);
			new SquareView(new Square(PlayerColor.RED), x, yardSize + 2 * squareSize, null).render(g2d);
		}
		
		new SquareView(new Square(PlayerColor.RED), 0, yardSize + squareSize, null).render(g2d);
	}
	
	@Override
	public void render(Graphics2D g2d) {
		renderGreenAreaTrack(g2d);
		renderYellowAreaTrack(g2d);
		renderBlueAreaTrack(g2d);
		renderRedAreaTrack(g2d);
	}

}
