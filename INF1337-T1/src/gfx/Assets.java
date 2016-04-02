package gfx;

import java.awt.image.BufferedImage;

/**
 * Classe respons�vel por pegar os tiles do arquivo de imagem (sheet.png)
 */
public class Assets {
	/**
	 * Largura de cada tile dentro do arquivo sheet.png
	 * <p>(Cada tile possui 32x32 pixels)</p>
	 */
	public static final int TILE_WIDTH = 32;
	/**
	 * Altura de cada tile dentro do arquivo sheet.png
	 * <p>(Cada tile possui 32x32 pixels)</p>
	 */
	public static final int TILE_HEIGHT = 32;

	public static BufferedImage start, mountain, plain, rock, end, visited, enemybase, enemyaa;
	
	/**
	 * Inicializa os tiles para cada BufferedImage, indicando sua largura e altura iniciais no arquivo sheet.png
	 */
	public static void init() {
		SpriteSheet sheet = new SpriteSheet(ImageLoader.loadImage("/sheet.png"));

		start = sheet.crop(0, 0, TILE_WIDTH, TILE_HEIGHT);
		end = sheet.crop(TILE_WIDTH * 4, 0, TILE_WIDTH, TILE_HEIGHT);
		visited = sheet.crop(TILE_WIDTH * 7, 0, TILE_WIDTH, TILE_HEIGHT);
		mountain = sheet.crop(TILE_WIDTH, 0, TILE_WIDTH, TILE_HEIGHT);
		plain = sheet.crop(TILE_WIDTH * 2, 0, TILE_WIDTH, TILE_HEIGHT);
		rock = sheet.crop(TILE_WIDTH * 3, 0, TILE_WIDTH, TILE_HEIGHT);
		enemybase = sheet.crop(TILE_WIDTH * 5, 0, TILE_WIDTH, TILE_HEIGHT);
		enemyaa = sheet.crop(TILE_WIDTH * 6, 0, TILE_WIDTH, TILE_HEIGHT);
	}
}