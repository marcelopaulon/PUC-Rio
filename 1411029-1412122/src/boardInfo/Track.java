package boardInfo;

import boardInfo.common.SquareList;
import playerInfo.PlayerColor;

public final class Track extends SquareList
{
	public Track()
	{
		super(52);

		try
		{
			resetSquareList();
		} catch (Exception e)
		{
			e.printStackTrace();
		}
	}

	private void resetSquareList() throws Exception
	{
		PlayerColor curAreaColor;

		for (int position = 1; position <= 52; position++)
		{
			if (position <= 13)
				curAreaColor = PlayerColor.GREEN;
			else if (position <= 26)
				curAreaColor = PlayerColor.YELLOW;
			else if (position <= 39)
				curAreaColor = PlayerColor.BLUE;
			else if (position <= 52)
				curAreaColor = PlayerColor.RED;
			else
				throw new Exception("Invalid square position");
			resetSquare(position, curAreaColor);
		}
	}
}
