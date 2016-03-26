package map;

import java.io.File;
import java.util.Scanner;

public class MapLoader {
	public static GameMap tryLoadMap(File file) throws MapLoaderException {
		try {
			Scanner scanner = new Scanner(file);

			int nColumns = scanner.nextLine().length(), nRows = 1;

			while (scanner.hasNextLine() && scanner.nextLine() != null) {
				nRows++;
			}

			scanner.close();
			scanner = null;
			scanner = new Scanner(file);

			char[][] array = new char[nRows][nColumns];

			for (int i = 0; i < nRows; i++) {
				array[i] = scanner.nextLine().toCharArray();
			}

			scanner.close();

			return new GameMap(array);
		} catch (Exception e) {
			throw new MapLoaderException();
		}
	}
}
