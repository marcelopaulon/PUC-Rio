package playerInfo;

import java.awt.Color;

public enum PlayerColor {
	RED(1),
	GREEN(2),
	YELLOW(3),
	BLUE(4);
	
	private final int asInt;
	
	/**
	 * Gets int used to create PlayerColor
	 * @return PlayerColor private variable asInt
	 */
	public int asInt() {
		return asInt;
	}
	
	/**
	 * Gets PlayerColor from integer value
	 * @return PlayerColor player color
	 */
	public static PlayerColor get(int intValue)
	{
		switch(intValue)
		{
			case 1:
				return RED;
			case 2:
				return GREEN;
			case 3:
				return YELLOW;
			case 4:
				return BLUE;
		}
		
		return null;
	}
	
	/**
	 * Gets system Color from PlayerColor
	 * @param playerColor PlayerColor player color.
	 * @return Color color system color
	 */
	public static Color getColor(PlayerColor playerColor)
	{
		switch(playerColor)
		{
			case RED:
				return Color.RED;
			case GREEN:
				return Color.GREEN;
			case YELLOW:
				return Color.YELLOW;
			case BLUE:
				return Color.BLUE;
		}
		
		return null;
	}
		
	/**
	 * Private constructor for enum elements
	 * <p><b>PlayerColor:</b> Enum of every different type of player color</p>
	 * @param intValue PlayerColor int value.
	 */
	private PlayerColor(int intValue) {
		this.asInt = intValue;
	}

}
