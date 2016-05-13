package rendering;

import java.awt.image.BufferedImage;

import utils.ImageUtils;

/*
 * DiceAssets
 * Image credits: "Dice" by Christian Mohr from the Noun Project
 */
public class DiceAssets {
	
	/**
	 * Width for each tile inside sheet.png
	 * <p>(Each tile possesses 270x270 pixels)</p>
	 */
	public static final int TILE_WIDTH = 270;
	/**
	 * Height for each tile inside sheet.png
	 * <p>(Each tile possesses 270x270 pixels)</p>
	 */
	public static final int TILE_HEIGHT = 270;
	
	public static BufferedImage one, two, three, four, five, six;
	public static BufferedImage diceRoll;
	
	/**
	 * Initializes the tiles for each BufferedImage, indicating their initial width and heights inside sheet.png
	 */
	public static void init() {
		ImageSheet sheet = new ImageSheet(ImageUtils.loadImage("/sheet.png"));
		one = sheet.crop(0, 0, TILE_WIDTH, TILE_HEIGHT);
		two = sheet.crop(TILE_WIDTH, 0, TILE_WIDTH, TILE_HEIGHT);
		three = sheet.crop(TILE_WIDTH * 2, 0, TILE_WIDTH, TILE_HEIGHT);
		four = sheet.crop(0, TILE_HEIGHT, TILE_WIDTH, TILE_HEIGHT);
		five = sheet.crop(TILE_WIDTH, TILE_HEIGHT, TILE_WIDTH, TILE_HEIGHT);
		six = sheet.crop(TILE_WIDTH * 2, TILE_HEIGHT, TILE_WIDTH, TILE_HEIGHT);
		diceRoll = sheet.crop(0, TILE_HEIGHT * 2, TILE_WIDTH, TILE_HEIGHT);
	}
}
