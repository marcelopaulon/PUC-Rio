package mapcell;

import java.awt.Graphics;
import java.awt.image.BufferedImage;

import gfx.Assets;
/**
 * Map cell representing an enemy that does 20 damage
 *
 */
public class Enemy20Cell extends MapCell {
	private static BufferedImage[] images = {Assets.enemy20Down, Assets.enemy20Left, Assets.enemy20Up, Assets.enemy20Right};
	
	private long start_time = System.nanoTime();
	private int curRender = 0;
	
	/**
	 * Enemy20Cell constructor
	 * <p><b>Enemy50Cell:</b> map cell representing an enemy that does 50 damage</p>
	 * @param id: Cell identifier.
	 */
	public Enemy20Cell(char id) {
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
		if(difference > 1000)
		{
			curRender++;
			if(curRender > 3)
			{
				curRender = 0;
			}
			
			start_time = System.nanoTime();
		}
		
		g.drawImage(textures[curRender], x, y, width, height, null);
	}
}
