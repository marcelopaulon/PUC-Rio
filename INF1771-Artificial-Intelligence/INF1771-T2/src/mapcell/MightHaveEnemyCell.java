package mapcell;

import java.awt.Graphics;
import java.awt.image.BufferedImage;

import gfx.Assets;
/**
 * Map cell representing a possible enemy cell
 *
 */
public class MightHaveEnemyCell extends MapCell {
	private static BufferedImage[] images = {Assets.mightHaveEnemy20, Assets.mightHaveEnemy50};
	
	private long start_time = System.nanoTime();
	private int curRender = 0;
	
	/**
	 * MightHaveEnemyCell constructor
	 * <p><b>MightHaveEnemyCell:</b> map cell representing a possible enemy cell</p>
	 * @param id: Cell identifier.
	 */
	public MightHaveEnemyCell(char id) {
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
			if(curRender > 1)
			{
				curRender = 0;
			}
			
			start_time = System.nanoTime();
		}
		
		g.drawImage(textures[curRender], x, y, width, height, null);
	}
}
