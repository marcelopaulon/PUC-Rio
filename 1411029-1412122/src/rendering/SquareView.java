package rendering;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.geom.Ellipse2D;
import java.awt.geom.Rectangle2D;
import java.util.Hashtable;

import boardInfo.Square;
import gfx.GameColor;
import playerInfo.PlayerColor;
import rendering.common.View;
import utils.Coordinate;

public class SquareView extends View {

	private float x;
	private float y;
	private Color fillColor;
	private boolean highlight;
	private Square square;
		
	public SquareView(Square square, float x, float y, Color fillColor, boolean highlight)
	{
		this.x = x;
		this.y = y;
		this.fillColor = fillColor;
		this.highlight = highlight;
		
		configureSpecialSquares();
		
		if(isSpecialSquare(x, y))
		{
			this.fillColor = specialTrackSquares.get(new Coordinate(x, y));
		}
		
		this.square = square;
	}
	
	private static final Hashtable<Coordinate, Color> specialTrackSquares = new Hashtable<Coordinate, Color>();
	
	private void configureSpecialSquares()
	{
		specialTrackSquares.put(new Coordinate(yardSize + 2 * squareSize, squareSize), GameColor.Green); // Green start
		specialTrackSquares.put(new Coordinate(yardSize + 7 * squareSize, yardSize + 2 * squareSize), GameColor.Yellow); // Yellow start
		specialTrackSquares.put(new Coordinate(yardSize, 2 * yardSize + squareSize), GameColor.Blue); // Blue start
		specialTrackSquares.put(new Coordinate(squareSize, yardSize), GameColor.Red); // Red start
		
		specialTrackSquares.put(new Coordinate(yardSize, squareSize), Color.BLACK); // Green area safe square
		specialTrackSquares.put(new Coordinate(yardSize + 7 * squareSize, yardSize), Color.BLACK); // Yellow area safe square
		specialTrackSquares.put(new Coordinate(yardSize + 2 * squareSize, 2 * yardSize + squareSize), Color.BLACK); // Blue area safe square
		specialTrackSquares.put(new Coordinate(squareSize, yardSize + 2 * squareSize), Color.BLACK); // Red area safe square
	}
	
	private boolean isSpecialSquare(float x, float y) {
		if(specialTrackSquares.containsKey(new Coordinate(x, y))) return true;
		
		return false;
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
		
		int pawnCount = square.getPawnCount();
		
		if(pawnCount > 0)
		{
			Color color = PlayerColor.getColor(square.getPawnsColor());
			g2d.setPaint(color.darker());
			
			if(highlight)
			{
				g2d.setPaint(PlayerColor.getLighterColor(square.getPawnsColor()));
			}
			
			Ellipse2D.Double pawn = new Ellipse2D.Double(x + (squareSize * 0.05), y + (squareSize * 0.05), 0.9 * squareSize, 0.9 * squareSize);
			g2d.fill(pawn);
		
			if(pawnCount > 1)
			{
				g2d.setPaint(Color.WHITE);
				g2d.setFont(new Font("Arial",Font.PLAIN, 12));
				g2d.drawString(String.format("%d", pawnCount), (float) (x + (squareSize * 0.40)), (float) (y + (squareSize * 0.63)));
			}
			
			if(highlight)
			{
				g2d.setColor(PlayerColor.getColor(square.getPawnsColor()));
				g2d.draw(pawn);
			}
		}
	}
}