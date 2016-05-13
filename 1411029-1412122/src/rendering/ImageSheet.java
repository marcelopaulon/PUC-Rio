package rendering;

import java.awt.image.BufferedImage;

/**
 * Class used to store a Image Sheet
 */
public class ImageSheet {
	/**
	 * Image file containing all tiles set to be used
	 */
	private BufferedImage sheet;

	/**
	 * ImageSheet Constructor
	 * <p><b>ImageSheet:</b> Creates a image sheet object.</p>
	 * @param sheet Sheet image
	 */
	public ImageSheet(BufferedImage sheet) {
		this.sheet = sheet;
	}

	/**
	 * Partitions the image into smaller pieces (to specify each tile's size) 
	 * @param x Horizontal coordinate where the sub-image (tile) starts
	 * @param y Vertical coordinate where the sub-image (tile) starts
	 * @param width The sub-image's width (tile)
	 * @param height The sub-image's height (tile)
	 * @return The sub-image loaded by the application in a BufferedImage
	 */
	public BufferedImage crop(int x, int y, int width, int height) {
		return sheet.getSubimage(x, y, width, height);
	}
}
