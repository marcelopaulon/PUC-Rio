package program;

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

	    Random rand = new Random();

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
		Random random = new Random();
		for (int i = 0; i < size; i++) {
		    char c = chars[random.nextInt(chars.length)];
		    sb.append(c);
		}
		return sb.toString(); 
	}
	


	/** 
	 * Creates an independent copy(clone) of the char array.
	 * @param array The array to be cloned.
	 * @return An independent 'deep' structure clone of the array.
	 */
	public static char[][] clone2DArray(char[][] array) {
	    int rows=array.length;
	
	    //clone the 'shallow' structure of array
	    char[][] newArray =(char[][]) array.clone();
	    
	    //clone the 'deep' structure of array
	    for(int row=0;row<rows;row++){
	        newArray[row]=(char[]) array[row].clone();
	    }
	
	    return newArray;
	}

	/** 
	 * Gets the file extension.
	 * @param fileName The file name to obtain the extension.
	 * @return File extension.
	 */
	public static String getFileExtension(String fileName) {
	    try {
	        return fileName.substring(fileName.lastIndexOf(".") + 1);
	    } catch (Exception e) {
	        return "";
	    }
	}
	
	/** 
	 * Gets the file base name.
	 * @param fileName The file name to obtain the base name.
	 * @return File base name.
	 */
	public static String getFileBaseName(String fileName) {
	    try {
	        return fileName.substring(0, fileName.lastIndexOf("."));
	    } catch (Exception e) {
	        return "";
	    }
	}


}
