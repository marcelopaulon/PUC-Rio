package boardInfo;

import java.util.ArrayList;
import java.util.List;

import playerInfo.PlayerColor;

public abstract class PawnList
{
	private List<Pawn> pawns;

	public PawnList(List<Pawn> pawns)
	{
		if (pawns != null)
		{
			this.pawns = pawns;
		}
		else
		{
			reset();
		}
	}

	protected void addPawn(Pawn pawn)
	{
		pawns.add(pawn);
	}

	protected void removePawn(PlayerColor color) throws Exception
	{
		boolean removed = false;

		for (int i = 0; i < pawns.size(); i++)
		{
			Pawn pawn = pawns.get(i);

			if (pawn.getColor() == color)
			{
				pawns.remove(pawn);
				removed = true;
				break;
			}
		}

		if (!removed)
			throw new Exception("Error when removing pawn from list");
	}

	public final void reset()
	{
		pawns = new ArrayList<Pawn>();
	}

	public final int getPawnCount()
	{
		return pawns.size();
	}

	public final int getPawnCountByColor(PlayerColor color)
	{
		int count = 0;

		for (int i = 0; i < pawns.size(); i++)
		{
			if (pawns.get(i).getColor() == color)
			{
				count++;
			}
		}

		return count;
	}

	public final List<PlayerColor> getPawnsColors()
	{
		List<PlayerColor> colors = new ArrayList<PlayerColor>();

		pawns.forEach(pawn ->
		{
			PlayerColor color = pawn.getColor();

			if (!colors.contains(color))
			{
				colors.add(color);
			}
		});

		return colors;
	}
}
