package rendering;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.geom.Ellipse2D;
import java.awt.geom.Rectangle2D;

import boardInfo.Board;
import boardInfo.Dice;
import playerInfo.PlayerColor;
import utils.ConstantsEnum;
import utils.Coordinate;

public class YardView extends View
{

	private static YardView instance;

	private Board board;

	private PlayerColor yardHighlight;

	public YardView(Board board)
	{
		instance = this;
		this.board = board;
	}

	public static Coordinate getCoordinates(int i)
	{
		double coordinateX = (i - 1) % 2;
		double coordinateY = (i - 1) / 2;

		if (i > 2)
		{
			coordinateX = i % 2;
		}

		if (i == 2 || i == 3)
			coordinateX = (coordinateX + 1) * rectSize - yardSize;
		if (i == 3 || i == 4)
			coordinateY = (coordinateY + 1) * rectSize - yardSize;

		return new Coordinate(coordinateX, coordinateY);
	}

	public void render(Graphics2D g2d)
	{
		for (int i = 1; i <= 4; i++)
		{
			PlayerColor playerColor = PlayerColor.get(i);
			Color color = PlayerColor.getColor(playerColor);

			Coordinate coordinate = getCoordinates(i);

			g2d.setPaint(color);
			Rectangle2D.Double yard = new Rectangle2D.Double(coordinate.getX(), coordinate.getY(), yardSize, yardSize);

			g2d.fill(yard);
			g2d.setColor(Color.BLACK);
			g2d.draw(yard);

			int pawns = board.getYard(playerColor).getCount();

			for (int j = 0; j < pawns; j++)
			{
				int k = 0;
				if (j > 1)
					k = 1;

				g2d.setPaint(color.darker());
				double pawnX = (1.05 * squareSize) + coordinate.getX() + (2.95 * squareSize) * (j % 2);
				double pawnY = (1.05 * squareSize) + coordinate.getY() + (2.95 * squareSize) * k;
				Ellipse2D.Double pawn = new Ellipse2D.Double(pawnX, pawnY, 0.9 * squareSize, 0.9 * squareSize);

				if (j == pawns - 1 && yardHighlight != null && yardHighlight == playerColor)
				{
					g2d.setPaint(PlayerColor.getLighterColor(playerColor));
				}

				g2d.fill(pawn);

				if (j == pawns - 1 && yardHighlight != null && yardHighlight == playerColor)
				{
					g2d.setColor(PlayerColor.getColor(playerColor));
					g2d.draw(pawn);
				}
			}

			if (playerColor == board.getCurrentPlayer())
			{
				new DiceView(coordinate.getX() + yardSize / 2.65, coordinate.getY() + yardSize / 2.65,
						Dice.getCurValue()).render(g2d);
			}
		}
	}

	public static void setYardHighlight(PlayerColor yardHighlight)
	{
		instance.yardHighlight = yardHighlight;
	}

	public static Coordinate getYardHighlightPawnCoordinate()
	{
		PlayerColor playerColor = instance.board.getCurrentPlayer();

		Coordinate coordinate = getCoordinates(playerColor.asInt());

		int pawns = instance.board.getYard(playerColor).getCount();

		int k = 0;
		if (pawns - 1 > 1)
			k = 1;

		double pawnX = (1.05 * squareSize) + coordinate.getX() + (2.95 * squareSize) * ((pawns - 1) % 2);
		double pawnY = (1.05 * squareSize) + coordinate.getY() + (2.95 * squareSize) * k;

		return new Coordinate(pawnX, pawnY);
	}

	public static Coordinate getYardDiceCoordinates(PlayerColor yardDice)
	{
		Coordinate coordinate = getCoordinates(yardDice.asInt());

		int x = (int) ((coordinate.getX() + yardSize / 2) / ConstantsEnum.squareSize) + 1;
		int y = (int) ((coordinate.getY() + yardSize / 2) / ConstantsEnum.squareSize) + 1;

		return new Coordinate(x, y);
	}

}
