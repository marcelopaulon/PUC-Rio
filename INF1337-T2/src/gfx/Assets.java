package gfx;

import java.awt.image.BufferedImage;

/**
 * Class responsible for extracting the tiles from the image file (sheet.png)
 */
public class Assets {
	/**
	 * Width for each tile inside sheet.png
	 * <p>(Each tile possesses 32x32 pixels)</p>
	 */
	public static final int TILE_WIDTH = 32;
	/**
	 * Height for each tile inside sheet.png
	 * <p>(Each tile possesses 32x32 pixels)</p>
	 */
	public static final int TILE_HEIGHT = 32;

	public static BufferedImage start, wall, hole, floor, floorvisited, teletransport, teletransport2, teletransport3, gold;
	public static BufferedImage enemy20Down, enemy20Left, enemy20Up, enemy20Right;
	public static BufferedImage enemy50Down, enemy50Left, enemy50Up, enemy50Right;
	public static BufferedImage agentDown, agentLeft, agentUp, agentRight;
	
	/**
	 * Initializes the tiles for each BufferedImage, indicating their initial width and heights inside sheet.png
	 */
	public static void init() {
		SpriteSheet sheet = new SpriteSheet(ImageLoader.loadImage("/sheet.png"));
		start = sheet.crop(0, 0, TILE_WIDTH, TILE_HEIGHT);
		wall = sheet.crop(TILE_WIDTH, 0, TILE_WIDTH, TILE_HEIGHT);
		hole = sheet.crop(TILE_WIDTH, TILE_HEIGHT, TILE_WIDTH, TILE_HEIGHT);
		floor = sheet.crop(TILE_WIDTH * 2, 0, TILE_WIDTH, TILE_HEIGHT);
		floorvisited = sheet.crop(TILE_WIDTH * 2, TILE_HEIGHT, TILE_WIDTH, TILE_HEIGHT);
		teletransport = sheet.crop(TILE_WIDTH * 3, 0, TILE_WIDTH, TILE_HEIGHT);
		teletransport2 = sheet.crop(TILE_WIDTH * 3, TILE_HEIGHT, TILE_WIDTH, TILE_HEIGHT);
		teletransport3 = sheet.crop(TILE_WIDTH * 3, TILE_HEIGHT * 2, TILE_WIDTH, TILE_HEIGHT);
		gold = sheet.crop(TILE_WIDTH * 4, 0, TILE_WIDTH, TILE_HEIGHT);
		
		enemy20Down = sheet.crop(TILE_WIDTH * 5, 0, TILE_WIDTH, TILE_HEIGHT);
		enemy20Left = sheet.crop(TILE_WIDTH * 5, TILE_HEIGHT, TILE_WIDTH, TILE_HEIGHT);
		enemy20Up = sheet.crop(TILE_WIDTH * 5, TILE_HEIGHT * 2, TILE_WIDTH, TILE_HEIGHT);
		enemy20Right = sheet.crop(TILE_WIDTH * 5, TILE_HEIGHT * 3, TILE_WIDTH, TILE_HEIGHT);
		
		enemy50Down = sheet.crop(TILE_WIDTH * 6, 0, TILE_WIDTH, TILE_HEIGHT);
		enemy50Left = sheet.crop(TILE_WIDTH * 6, TILE_HEIGHT, TILE_WIDTH, TILE_HEIGHT);
		enemy50Up = sheet.crop(TILE_WIDTH * 6, TILE_HEIGHT * 2, TILE_WIDTH, TILE_HEIGHT);
		enemy50Right = sheet.crop(TILE_WIDTH * 6, TILE_HEIGHT * 3, TILE_WIDTH, TILE_HEIGHT);
		
		agentDown = sheet.crop(TILE_WIDTH * 7, 0, TILE_WIDTH, TILE_HEIGHT);
		agentLeft = sheet.crop(TILE_WIDTH * 7, TILE_HEIGHT, TILE_WIDTH, TILE_HEIGHT);
		agentUp = sheet.crop(TILE_WIDTH * 7, TILE_HEIGHT * 2, TILE_WIDTH, TILE_HEIGHT);
		agentRight = sheet.crop(TILE_WIDTH * 7, TILE_HEIGHT * 3, TILE_WIDTH, TILE_HEIGHT);
	}
}