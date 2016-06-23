package boardInfo;

import java.util.Random;

public final class Dice
{
	private static Random randomNumberGenerator = new Random();

	private static int curValue = 1;

	private static int consecutive6 = 0;

	public static int rollDice()
	{
		curValue = randomNumberGenerator.nextInt(6) + 1;
		if (curValue == 6)
			consecutive6++;
		return curValue;
	}

	public static int getConsecutive6()
	{
		return consecutive6;
	}

	public static void resetConsecutive6()
	{
		consecutive6 = 0;
	}

	public static void setConsecutive6(int value)
	{
		consecutive6 = value;
	}
	
	public static int getCurValue()
	{
		return curValue;
	}

	public static void setCurValue(int value)
	{
		curValue = value;
	}
}