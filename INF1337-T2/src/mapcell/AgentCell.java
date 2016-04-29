package mapcell;

import java.awt.Graphics;
import java.awt.image.BufferedImage;

import gfx.Assets;
/**
 * Map cell representing an enemy that does 20 damage
 *
 */
public class AgentCell extends MapCell {
	private static BufferedImage[] images = {Assets.agentDown, Assets.agentLeft, Assets.agentUp, Assets.agentRight};
	
	private int curRender = 0;
	
	/**
	 * Enemy20Cell constructor
	 * <p><b>Enemy50Cell:</b> map cell representing an enemy that does 50 damage</p>
	 * @param id: Cell identifier.
	 */
	public AgentCell(char id) {
		super(images, id, true);
	}
	
	public void setOrientation(char orientation)
	{
		switch(orientation)
			{
			case 'D':
				curRender = 0;
				break;
			case 'L':
				curRender = 1;
				break;
			case 'U':
				curRender = 2;
				break;
			case 'R':
				curRender = 3;
				break;
		}
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
		g.drawImage(textures[curRender], x, y, width, height, null);
	}
}
