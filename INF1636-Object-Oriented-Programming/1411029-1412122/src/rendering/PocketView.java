package rendering;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.geom.Ellipse2D;

import boardInfo.Board;
import playerInfo.PlayerColor;
import rendering.common.View;
import utils.Coordinate;

public class PocketView extends View
{

	private Board board;

	public PocketView(Board board)
	{
		this.board = board;
	}

	private Coordinate[] getCoordinates(int i)
	{
		Coordinate coordinates[] = new Coordinate[3];

		coordinates[0] = new Coordinate((int) (rectSize - 3 * yardSize / 12), (int) (rectSize - 3 * yardSize / 12));

		coordinates[1] = new Coordinate(rectSize, rectSize);

		if (i == 1 || i == 3)
		{
			coordinates[2] = new Coordinate((int) (rectSize - 3 * yardSize / 12), (int) (rectSize + 3 * yardSize / 12));

			if (i == 3)
			{
				coordinates[0].setX(coordinates[0].getX() + yardSize / 2);
				coordinates[2].setX(coordinates[2].getX() + yardSize / 2);
			}
		}
		else
		{
			coordinates[2] = new Coordinate((int) (rectSize + 3 * yardSize / 12), (int) (rectSize - 3 * yardSize / 12));

			if (i == 4)
			{
				coordinates[0].setY(coordinates[0].getY() + yardSize / 2);
				coordinates[2].setY(coordinates[2].getY() + yardSize / 2);
			}
		}

		return coordinates;
	}

	public void render(Graphics2D g2d)
	{
		for (int i = 1; i <= 4; i++)
		{
			Coordinate coordinates[] = getCoordinates(i);

			int coordinateXs[] = new int[] { (int) coordinates[0].getX(), (int) coordinates[1].getX(),
					(int) coordinates[2].getX() };
			int coordinateYs[] = new int[] { (int) coordinates[0].getY(), (int) coordinates[1].getY(),
					(int) coordinates[2].getY() };

			PlayerColor playerColor = PlayerColor.get(i);
			Color color = PlayerColor.getColor(playerColor);

			g2d.setPaint(color);
			g2d.fillPolygon(coordinateXs, coordinateYs, 3);
			g2d.setColor(Color.BLACK);
			g2d.drawPolygon(coordinateXs, coordinateYs, 3);

			int pawnCount = board.getPocket(playerColor).getPawnCount();

			if (pawnCount > 0)
			{
				float pawnX = (float) ((coordinateXs[0] + coordinateXs[1] + coordinateXs[2]) / 3.0 - squareSize / 2.0);
				float pawnY = (float) ((coordinateYs[0] + coordinateYs[1] + coordinateYs[2]) / 3.0 - squareSize / 2.0);

				g2d.setPaint(color.darker());

				Ellipse2D.Double pawn = new Ellipse2D.Double(pawnX + (squareSize * 0.05), pawnY + (squareSize * 0.05),
						0.9 * squareSize, 0.9 * squareSize);
				g2d.fill(pawn);

				if (pawnCount > 1)
				{
					g2d.setPaint(Color.WHITE);
					g2d.setFont(new Font("Arial", Font.PLAIN, 12));
					g2d.drawString(String.format("%d", pawnCount), (float) (pawnX + (squareSize * 0.40)),
							(float) (pawnY + (squareSize * 0.63)));
				}

			}
		}
	}

}
