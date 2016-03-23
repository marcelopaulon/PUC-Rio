package gfx;

import java.awt.image.BufferedImage;

public class Assets {
	public static final int TILE_WIDTH = 32;
	public static final int TILE_HEIGHT = 32;

	public static BufferedImage dirt, grass, stone, start, end, visited;

	public static void init() {
		SpriteSheet sheet = new SpriteSheet(ImageLoader.loadImage("/sheet.png"));

		dirt = sheet.crop(TILE_WIDTH, 0, TILE_WIDTH, TILE_HEIGHT);
		grass = sheet.crop(TILE_WIDTH * 2, 0, TILE_WIDTH, TILE_HEIGHT);
		stone = sheet.crop(TILE_WIDTH * 3, 0, TILE_WIDTH, TILE_HEIGHT);
		start = sheet.crop(0, 0, TILE_WIDTH, TILE_HEIGHT);
		end = sheet.crop(TILE_WIDTH * 4, 0, TILE_WIDTH, TILE_HEIGHT);
		visited = sheet.crop(TILE_WIDTH * 5, 0, TILE_WIDTH, TILE_HEIGHT);
	}
}