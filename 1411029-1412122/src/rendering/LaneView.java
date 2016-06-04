package rendering;

import java.awt.Graphics2D;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;

import boardInfo.Lane;
import game.Notifications;
import gfx.GameColor;
import playerInfo.PlayerColor;
import rendering.common.View;
import utils.Coordinate;

public class LaneView extends View
{

	private static LaneView instance;

	private Lane greenLane;
	private Lane yellowLane;
	private Lane blueLane;
	private Lane redLane;

	public LaneView(Lane greenLane, Lane yellowLane, Lane blueLane, Lane redLane)
	{
		instance = this;

		this.greenLane = greenLane;
		this.yellowLane = yellowLane;
		this.blueLane = blueLane;
		this.redLane = redLane;

		calculateGreenLaneCoordinates();
		calculateYellowLaneCoordinates();
		calculateBlueLaneCoordinates();
		calculateRedLaneCoordinates();
	}

	private List<Integer> greenLaneSquareHighlight = new ArrayList<Integer>();
	private List<Integer> yellowLaneSquareHighlight = new ArrayList<Integer>();
	private List<Integer> blueLaneSquareHighlight = new ArrayList<Integer>();
	private List<Integer> redLaneSquareHighlight = new ArrayList<Integer>();

	private Hashtable<Integer, Coordinate> greenLaneCoordinates = new Hashtable<Integer, Coordinate>();
	private Hashtable<Integer, Coordinate> yellowLaneCoordinates = new Hashtable<Integer, Coordinate>();
	private Hashtable<Integer, Coordinate> blueLaneCoordinates = new Hashtable<Integer, Coordinate>();
	private Hashtable<Integer, Coordinate> redLaneCoordinates = new Hashtable<Integer, Coordinate>();

	private void calculateGreenLaneCoordinates()
	{
		float x = yardSize + squareSize;
		int position = 1;

		for (float y = squareSize; y < yardSize; y += squareSize)
		{
			greenLaneCoordinates.put(position, new Coordinate(x, y));
			position++;
		}
	}

	private void calculateYellowLaneCoordinates()
	{
		float y = yardSize + squareSize;
		int position = 1;

		for (float x = yardSize + 7 * squareSize; x >= yardSize + 3 * squareSize; x -= squareSize)
		{
			yellowLaneCoordinates.put(position, new Coordinate(x, y));
			position++;
		}
	}

	private void calculateBlueLaneCoordinates()
	{
		float x = yardSize + squareSize;
		int position = 1;

		for (float y = yardSize + 7 * squareSize; y >= yardSize + 3 * squareSize; y -= squareSize)
		{
			blueLaneCoordinates.put(position, new Coordinate(x, y));
			position++;
		}
	}

	private void calculateRedLaneCoordinates()
	{
		float y = yardSize + squareSize;
		int position = 1;

		for (float x = squareSize; x < squareSize + 5 * squareSize; x += squareSize)
		{
			redLaneCoordinates.put(position, new Coordinate(x, y));
			position++;
		}
	}

	private void renderGreenLane(Graphics2D g2d)
	{
		for (int i = 1; i <= 5; i++)
		{
			Coordinate coordinate = greenLaneCoordinates.get(i);
			boolean highlight = greenLaneSquareHighlight.contains(i);
			new SquareView(greenLane.getSquareAt(i), (int) coordinate.getX(), (int) coordinate.getY(), GameColor.Green,
					highlight).render(g2d);
		}
	}

	private void renderYellowLane(Graphics2D g2d)
	{
		for (int i = 1; i <= 5; i++)
		{
			Coordinate coordinate = yellowLaneCoordinates.get(i);
			boolean highlight = yellowLaneSquareHighlight.contains(i);
			new SquareView(yellowLane.getSquareAt(i), (int) coordinate.getX(), (int) coordinate.getY(),
					GameColor.Yellow, highlight).render(g2d);
		}
	}

	private void renderBlueLane(Graphics2D g2d)
	{
		for (int i = 1; i <= 5; i++)
		{
			Coordinate coordinate = blueLaneCoordinates.get(i);
			boolean highlight = blueLaneSquareHighlight.contains(i);
			new SquareView(blueLane.getSquareAt(i), (int) coordinate.getX(), (int) coordinate.getY(), GameColor.Blue,
					highlight).render(g2d);
		}
	}

	private void renderRedLane(Graphics2D g2d)
	{
		for (int i = 1; i <= 5; i++)
		{
			Coordinate coordinate = redLaneCoordinates.get(i);
			boolean highlight = redLaneSquareHighlight.contains(i);
			new SquareView(redLane.getSquareAt(i), (int) coordinate.getX(), (int) coordinate.getY(), GameColor.Red,
					highlight).render(g2d);
		}
	}

	@Override
	public void render(Graphics2D g2d)
	{
		renderGreenLane(g2d);
		renderYellowLane(g2d);
		renderBlueLane(g2d);
		renderRedLane(g2d);
	}

	public static Coordinate getPawnCoordinate(PlayerColor laneColor, int position) throws Exception
	{
		Hashtable<Integer, Coordinate> list = null;

		if (laneColor == PlayerColor.GREEN)
		{
			list = instance.greenLaneCoordinates;
		}
		else if (laneColor == PlayerColor.YELLOW)
		{
			list = instance.yellowLaneCoordinates;
		}
		else if (laneColor == PlayerColor.BLUE)
		{
			list = instance.blueLaneCoordinates;
		}
		else if (laneColor == PlayerColor.RED)
		{
			list = instance.redLaneCoordinates;
		}
		else
		{
			throw new Exception("Invalid player color");
		}

		return list.get(position);
	}

	private List<Integer> getHighlightList(PlayerColor laneColor) throws Exception
	{
		List<Integer> list = null;

		if (laneColor == PlayerColor.GREEN)
		{
			list = greenLaneSquareHighlight;
		}
		else if (laneColor == PlayerColor.YELLOW)
		{
			list = yellowLaneSquareHighlight;
		}
		else if (laneColor == PlayerColor.BLUE)
		{
			list = blueLaneSquareHighlight;
		}
		else if (laneColor == PlayerColor.RED)
		{
			list = redLaneSquareHighlight;
		}
		else
		{
			throw new Exception("Invalid player color");
		}

		return list;
	}

	public static void setSquareHighlight(PlayerColor laneColor, int pawnPosition)
	{
		try
		{
			instance.getHighlightList(laneColor).add(pawnPosition);
		} catch (Exception e)
		{
			Notifications.notifyError(e.getMessage());
			e.printStackTrace();
		}
	}

	public void clearSquareHighlight(PlayerColor laneColor)
	{
		try
		{
			getHighlightList(laneColor).clear();
		} catch (Exception e)
		{
			Notifications.notifyError(e.getMessage());
			e.printStackTrace();
		}
	}

}
