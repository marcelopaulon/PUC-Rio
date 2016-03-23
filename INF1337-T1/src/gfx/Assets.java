package gfx;

import java.awt.image.BufferedImage;

public class Assets {
	public static final int TILE_WIDTH = 32;
	public static final int TILE_HEIGHT = 32;

	public static BufferedImage start, mountain, plain, rock, end, visited, enemybase, enemyaa;

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