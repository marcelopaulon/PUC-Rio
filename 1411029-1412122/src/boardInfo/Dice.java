package boardInfo;

import java.util.Random;

public class Dice {
	private static Random randomNumberGenerator = new Random();
	
	public static int rollDice()
	{
		return randomNumberGenerator.nextInt(6) + 1;
	}
}