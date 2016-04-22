package mapcell;

import java.awt.Graphics;
import java.awt.image.BufferedImage;

import gfx.Assets;
/**
 * Map cell representing a teletransport unit
 *
 */
public class TeletransportCell extends MapCell {
	
	private static BufferedImage[] images = {Assets.teletransport, Assets.teletransport2, Assets.teletransport3};
	
	private long start_time = System.nanoTime();
	private int curRender = 0;
	
	/**
	 * TeletransportCell constructor
	 * <p><b>TeletransportCell:</b> map cell representing a teletransport unit</p>
	 * @param id: Cell identifier.
	 */
	public TeletransportCell(char id) {
		super(images, id, true);
	}
	
	/**
	 * Draws the image
	 * @param g Rendering component
	 * @param x coordinate to be passed onto drawImage
	 * @param y coordinate to be passed onto drawImage
	 * @param width be passed onto drawImage
	 * @param height to be passed onto drawImage
	 */
	@Override
	public void render(Graphics g, int x, int y, int width, int height) {
		long end_time = System.nanoTime();
		double difference = (end_time - start_time)/1e6;
		if(difference > 200)
		{
			curRender++;
			if(curRender > 2)
			{
				curRender = 0;
			}
			
			start_time = System.nanoTime();
		}
		
		g.drawImage(textures[curRender], x, y, width, height, null);
	}
}
