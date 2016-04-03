package map;

import java.io.File;
import java.util.Scanner;
/**
 * Classe responsável por carregar um arquivo de mapa
 */
public class MapLoader {
	/**
	 * Carrega arquivo de mapa
	 * @param file arquivo com a matriz do mapa (em texto, com um caractere por célula, 
	 * de acordo com o definido no enunciado)
	 * @return retorna um GameMap com o mapa carregado
	 * @throws MapLoaderException
	 */
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
