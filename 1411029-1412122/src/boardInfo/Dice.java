package boardInfo;

import java.util.Random;

public class Dice {
	private static Random randomNumberGenerator = new Random();
	
	private static int curValue = 1;
	
	public static int rollDice()
	{
		curValue = randomNumberGenerator.nextInt(6) + 1;
		return curValue;
	}
	
	public static int getCurValue()
	{
		return curValue;
	}
}