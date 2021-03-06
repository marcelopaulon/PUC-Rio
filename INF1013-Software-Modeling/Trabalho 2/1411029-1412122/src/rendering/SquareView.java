package rendering;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.geom.Ellipse2D;
import java.awt.geom.Rectangle2D;
import java.util.Hashtable;
import java.util.List;

import boardInfo.Board;
import boardInfo.Square;
import gfx.GameColor;
import playerInfo.PlayerColor;
import utils.Coordinate;

public class SquareView extends View
{

	private float x;
	private float y;
	private Color fillColor;
	private boolean highlight;
	private Square square;
	private Board board;

	public SquareView(Board board, Square square, float x, float y, Color fillColor, boolean highlight)
	{
		this.board = board;
		
		this.x = x;
		this.y = y;
		this.fillColor = fillColor;
		this.highlight = highlight;

		configureSpecialSquares();

		if (isSpecialSquare(x, y))
		{
			this.fillColor = specialTrackSquares.get(new Coordinate(x, y));
		}

		this.square = square;
	}

	private static final Hashtable<Coordinate, Color> specialTrackSquares = new Hashtable<Coordinate, Color>();

	private void configureSpecialSquares()
	{
		// Green start
		specialTrackSquares.put(new Coordinate(yardSize + 2 * squareSize, squareSize), GameColor.Green);

		// Yellow start
		specialTrackSquares.put(new Coordinate(yardSize + 7 * squareSize, yardSize + 2 * squareSize), GameColor.Yellow);

		// Blue start
		specialTrackSquares.put(new Coordinate(yardSize, 2 * yardSize + squareSize), GameColor.Blue);

		// Red start
		specialTrackSquares.put(new Coordinate(squareSize, yardSize), GameColor.Red);

		// Green area safe square
		specialTrackSquares.put(new Coordinate(yardSize, squareSize), Color.BLACK);

		// Yellow area safe square
		specialTrackSquares.put(new Coordinate(yardSize + 7 * squareSize, yardSize), Color.BLACK);

		// Blue area safe square
		specialTrackSquares.put(new Coordinate(yardSize + 2 * squareSize, 2 * yardSize + squareSize), Color.BLACK);

		// Red area safe square
		specialTrackSquares.put(new Coordinate(squareSize, yardSize + 2 * squareSize), Color.BLACK);
	}

	private boolean isSpecialSquare(float x, float y)
	{
		if (specialTrackSquares.containsKey(new Coordinate(x, y)))
			return true;

		return false;
	}

	private void renderSingleColor(Graphics2D g2d, PlayerColor player, int pawnCount)
	{
		Color color = PlayerColor.getColor(player);

		g2d.setPaint(color.darker());

		if (highlight)
		{
			g2d.setPaint(PlayerColor.getLighterColor(player));
		}

		Ellipse2D.Double pawn = new Ellipse2D.Double(x + (squareSize * 0.05), y + (squareSize * 0.05), 0.9 * squareSize,
				0.9 * squareSize);
		g2d.fill(pawn);

		if (pawnCount > 1)
		{
			g2d.setPaint(Color.WHITE);
			g2d.setFont(new Font("Arial", Font.PLAIN, 12));
			g2d.drawString(String.format("%d", pawnCount), (float) (x + (squareSize * 0.40)),
					(float) (y + (squareSize * 0.63)));
		}

		if (highlight)
		{
			g2d.setColor(color);
			g2d.draw(pawn);
		}
	}

	private void renderMultipleColor(Graphics2D g2d, Square square)
	{
		PlayerColor currentPlayer = board.getCurrentPlayer();
		List<PlayerColor> colors = square.getPawnsColors();

		double squareSize4th = squareSize / 2.0;

		for (int i = 0; i < colors.size(); i++)
		{
			PlayerColor playerColor = colors.get(i);
			Color color = PlayerColor.getColor(playerColor);

			g2d.setPaint(color.darker());

			if (playerColor == currentPlayer && highlight)
			{
				g2d.setPaint(PlayerColor.getLighterColor(playerColor));
			}

			int xIdx = i;
			int yIdx = i;

			if (colors.size() > 2)
			{
				if (i == 1)
				{
					yIdx = 0;
				}
				else if (i == 2)
				{
					xIdx = 0;
					yIdx = 1;
				}
				else if (i == 3)
				{
					xIdx = 1;
					yIdx = 1;
				}
			}

			Ellipse2D.Double pawn = new Ellipse2D.Double(x + (squareSize4th * 0.05) + squareSize4th * xIdx,
					y + (squareSize4th * 0.05) + squareSize4th * yIdx, 0.9 * squareSize4th, 0.9 * squareSize4th);
			g2d.fill(pawn);

			int pawnCount = square.getPawnCountByColor(playerColor);

			if (pawnCount > 1)
			{
				g2d.setPaint(Color.WHITE);
				g2d.setFont(new Font("Arial", Font.PLAIN, 10));
				g2d.drawString(String.format("%d", pawnCount),
						(float) (x + (squareSize4th * 0.381) + squareSize4th * i),
						(float) (y + (squareSize4th * 0.62) + squareSize4th * i));
			}

			if (playerColor == currentPlayer && highlight)
			{
				g2d.setColor(color);
				g2d.draw(pawn);
			}
		}
	}

	@Override
	public void render(Graphics2D g2d)
	{
		if (fillColor != null)
		{
			g2d.setPaint(fillColor);
			g2d.fill(new Rectangle2D.Float(x, y, squareSize, squareSize));
		}

		g2d.setColor(Color.BLACK);
		g2d.draw(new Rectangle2D.Float(x, y, squareSize, squareSize));

		int pawnCount = square.getPawnCount();

		if (pawnCount > 0)
		{
			List<PlayerColor> colors = square.getPawnsColors();

			if (colors.size() == 1)
			{
				renderSingleColor(g2d, colors.get(0), pawnCount);
			}
			else
			{
				renderMultipleColor(g2d, square);
			}
		}
	}
}