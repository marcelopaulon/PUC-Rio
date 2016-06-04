package game;

import java.io.File;
import java.util.Scanner;

import boardInfo.Board;

/**
 * Class responsible for loading a map's file
 */
public class BoardLoader
{
	/**
	 * Loads the map's file
	 * 
	 * @param file
	 *            with the map's matrix (In text, one character per cell,
	 *            according to what's defined in the assignment)
	 * @return a GameMap with the loaded map
	 * @throws MapLoaderException
	 */
	public static Board tryLoadMap(File file) throws Exception
	{
		Scanner scanner = new Scanner(file);

		int nColumns = scanner.nextLine().length(), nRows = 1;

		while (scanner.hasNextLine() && scanner.nextLine() != null)
		{
			nRows++;
		}

		scanner.close();
		scanner = null;
		scanner = new Scanner(file);

		char[][] array = new char[nRows][nColumns];

		for (int i = 0; i < nRows; i++)
		{
			array[i] = scanner.nextLine().toCharArray();
		}

		scanner.close();
		return null;
		// return new GameMap(array);
	}
}