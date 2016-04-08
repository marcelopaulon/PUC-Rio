package program;

import java.security.SecureRandom;
import java.util.Random;

public class Utils
{
	/**
	 * Returns a pseudo-random number between min and max, inclusive.
	 * The difference between min and max can be at most
	 * <code>Integer.MAX_VALUE - 1</code>.
	 *
	 * @param min Minimum value
	 * @param max Maximum value.  Must be greater than min.
	 * @return Integer between min and max, inclusive.
	 * @see java.util.Random#nextInt(int)
	 */
	public static int randInt(int min, int max) {

	    Random rand = new SecureRandom();

	    // nextInt is normally exclusive of the top value,
	    // so add 1 to make it inclusive
	    int randomNum = rand.nextInt((max - min) + 1) + min;

	    return randomNum;
	}
	
	/**
	 * Returns a pseudo-random string of a given size with limited characters.
	 *
	 * @param characters Characters that can be included in the string
	 * @param size Size of the string.
	 * @return Pseudo-random string.
	 * @see java.util.Random#nextInt(int)
	 */
	public static String randString(String characters, int size)
	{
		char[] chars = characters.toCharArray();
		StringBuilder sb = new StringBuilder();
		Random random = new SecureRandom();
		for (int i = 0; i < size; i++) {
		    char c = chars[random.nextInt(chars.length)];
		    sb.append(c);
		}
		return sb.toString(); 
	}
}
