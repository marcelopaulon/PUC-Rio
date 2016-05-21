package utils;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Hashtable;
import java.util.Map.Entry;

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
	
	public static ArrayList<Entry<?, Integer>> sortHashtableByIntegerValue(Hashtable<?, Integer> t){

       //Transfer as List and sort it
       ArrayList<java.util.Map.Entry<?, Integer>> l = new ArrayList<Entry<?, Integer>>(t.entrySet());
       Collections.sort(l, new java.util.Comparator<java.util.Map.Entry<?, Integer>>(){

         public int compare(java.util.Map.Entry<?, Integer> o1, java.util.Map.Entry<?, Integer> o2) {
            return o1.getValue().compareTo(o2.getValue());
        }});

       return l;
    }


}