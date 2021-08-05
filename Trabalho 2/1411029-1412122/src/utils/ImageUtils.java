package utils;

import java.awt.image.BufferedImage;
import java.io.IOException;

import javax.imageio.ImageIO;

/**
 * Utils for images
 */
public class ImageUtils
{
	/**
	 * Reads the image file
	 * 
	 * @param path
	 *            The image file's path
	 * @return The image file's reading or <b>null</b> if the file can't be read
	 */
	public static BufferedImage loadImage(String path)
	{
		try
		{
			return ImageIO.read(ImageUtils.class.getResource(path));
		} catch (IOException e)
		{
			e.printStackTrace();
			System.exit(1);
		}
		return null;
	}
}