package rendering;

import java.awt.Color;
import java.awt.Graphics2D;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;

import boardInfo.Board;
import boardInfo.Square;
import boardInfo.Track;
import game.BoardPositions;
import gfx.GameColor;
import notifications.Notifications;
import playerInfo.PlayerColor;
import utils.Coordinate;

public class TrackView extends View
{
	private static TrackView instance;

	private Board board;
	private Track track;

	public TrackView(Board board)
	{
		instance = this;

		this.board = board;
		this.track = board.getTrack();
		
		calculateGreenAreaCoordinates();
		calculateYellowAreaCoordinates();
		calculateBlueAreaCoordinates();
		calculateRedAreaCoordinates();
	}

	private List<Integer> squareHighlight = new ArrayList<Integer>();

	private Hashtable<Integer, Coordinate> pawnCoordinates = new Hashtable<Integer, Coordinate>();

	private void calculateGreenAreaCoordinates()
	{
		int i = 5, j = 7;

		for (float y = 0; y < yardSize; y += squareSize)
		{
			pawnCoordinates.put(1 + i, new Coordinate(yardSize, y));
			pawnCoordinates.put(1 + j, new Coordinate(yardSize + 2 * squareSize, y));

			i--;
			j++;
		}

		pawnCoordinates.put(7, new Coordinate(yardSize + squareSize, 0));
	}

	private void calculateYellowAreaCoordinates()
	{
		int i = 1, j = 13;

		for (float x = yardSize + 3 * squareSize; x < yardSize + 9 * squareSize; x += squareSize)
		{
			pawnCoordinates.put(13 + i, new Coordinate(x, yardSize));
			pawnCoordinates.put(13 + j, new Coordinate(x, yardSize + 2 * squareSize));

			i++;
			j--;
		}

		pawnCoordinates.put(20, new Coordinate(yardSize + 8 * squareSize, yardSize + squareSize));
	}

	private void calculateBlueAreaCoordinates()
	{
		int i = 13, j = 1;

		for (float y = yardSize + 3 * squareSize; y < yardSize + 9 * squareSize; y += squareSize)
		{
			pawnCoordinates.put(26 + i, new Coordinate(yardSize, y));
			pawnCoordinates.put(26 + j, new Coordinate(yardSize + 2 * squareSize, y));

			i--;
			j++;
		}

		pawnCoordinates.put(33, new Coordinate(yardSize + squareSize, yardSize + 8 * squareSize));
	}

	private void calculateRedAreaCoordinates()
	{
		int i = 8, j = 6;

		for (float x = 0; x < squareSize + 5 * squareSize; x += squareSize)
		{
			pawnCoordinates.put(39 + i, new Coordinate(x, yardSize));
			pawnCoordinates.put(39 + j, new Coordinate(x, yardSize + 2 * squareSize));

			i++;
			j--;
		}

		pawnCoordinates.put(46, new Coordinate(0, yardSize + squareSize));
	}

	private void renderTrackFlowIndicator(Graphics2D g2d, int coordinateXs[], int coordinateYs[])
	{
		Color color = GameColor.PolarWhite;

		g2d.setPaint(color);
		g2d.fillPolygon(coordinateXs, coordinateYs, 3);
		g2d.setColor(Color.BLACK);
		g2d.drawPolygon(coordinateXs, coordinateYs, 3);
	}

	private void tryRenderTrackFlowIndicators(Graphics2D g2d, Coordinate coordinate, int position)
	{
		int coordinateXs[] = new int[3];
		int coordinateYs[] = new int[3];

		if (BoardPositions.isInitialSquarePosition(position) == PlayerColor.GREEN)
		{
			coordinateXs[0] = (int) (coordinate.getX() + squareSize / 8.0);
			coordinateYs[0] = (int) (coordinate.getY() + squareSize / 8.0);

			coordinateXs[1] = (int) (coordinate.getX() + squareSize / 2.0);
			coordinateYs[1] = (int) (coordinate.getY() + squareSize - squareSize / 8.0);

			coordinateXs[2] = (int) (coordinate.getX() + squareSize - squareSize / 8.0);
			coordinateYs[2] = (int) (coordinate.getY() + squareSize / 8.0);

			renderTrackFlowIndicator(g2d, coordinateXs, coordinateYs);
		}
		else if (BoardPositions.isInitialSquarePosition(position) == PlayerColor.YELLOW)
		{
			coordinateXs[0] = (int) (coordinate.getX() + squareSize - squareSize / 8.0);
			coordinateYs[0] = (int) (coordinate.getY() + squareSize / 8.0);

			coordinateXs[1] = (int) (coordinate.getX() + squareSize - squareSize / 8.0);
			coordinateYs[1] = (int) (coordinate.getY() + squareSize - squareSize / 8.0);

			coordinateXs[2] = (int) (coordinate.getX() + squareSize / 8.0);
			coordinateYs[2] = (int) (coordinate.getY() + squareSize / 2.0);

			renderTrackFlowIndicator(g2d, coordinateXs, coordinateYs);
		}
		else if (BoardPositions.isInitialSquarePosition(position) == PlayerColor.BLUE)
		{
			coordinateXs[0] = (int) (coordinate.getX() + squareSize / 8.0);
			coordinateYs[0] = (int) (coordinate.getY() + squareSize - squareSize / 8.0);

			coordinateXs[1] = (int) (coordinate.getX() + squareSize / 2.0);
			coordinateYs[1] = (int) (coordinate.getY() + squareSize / 8.0);

			coordinateXs[2] = (int) (coordinate.getX() + squareSize - squareSize / 8.0);
			coordinateYs[2] = (int) (coordinate.getY() + squareSize - squareSize / 8.0);

			renderTrackFlowIndicator(g2d, coordinateXs, coordinateYs);
		}
		else if (BoardPositions.isInitialSquarePosition(position) == PlayerColor.RED)
		{
			coordinateXs[0] = (int) (coordinate.getX() + squareSize / 8.0);
			coordinateYs[0] = (int) (coordinate.getY() + squareSize / 8.0);

			coordinateXs[1] = (int) (coordinate.getX() + squareSize / 8.0);
			coordinateYs[1] = (int) (coordinate.getY() + squareSize - squareSize / 8.0);

			coordinateXs[2] = (int) (coordinate.getX() + squareSize - squareSize / 8.0);
			coordinateYs[2] = (int) (coordinate.getY() + squareSize / 2.0);

			renderTrackFlowIndicator(g2d, coordinateXs, coordinateYs);
		}
	}

	@Override
	public void render(Graphics2D g2d)
	{		
		for (int i = 1; i <= 52; i++)
		{
			try
			{
				Coordinate coordinate = getPawnCoordinate(i);
				Square square = track.getSquareAt(i);
				new SquareView(board, square, (int) coordinate.getX(), (int) coordinate.getY(), null,
						squareHighlight.contains(i)).render(g2d);

				if (square.getPawnCount() == 0 && BoardPositions.isInitialSquarePosition(i) != null)
				{
					tryRenderTrackFlowIndicators(g2d, coordinate, i);
				}
			} catch (Exception e)
			{
				Notifications.getInstance().notifyError(e.getMessage());
				e.printStackTrace();
			}
		}
	}

	public static void setSquareHighlight(int position)
	{
		instance.squareHighlight.add(position);
	}

	public static Coordinate getPawnCoordinate(int position) throws Exception
	{
		return instance.pawnCoordinates.get(position);
	}

	public void clearSquareHighlight()
	{
		squareHighlight.clear();
	}

}
