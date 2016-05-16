package utils;

import java.util.Random;

public class Utils
{
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