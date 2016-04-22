package mapcell;

import java.awt.Graphics;
import java.awt.image.BufferedImage;
/**
 * Map cell representing every possible tile
 * 
 *
 */
public abstract class MapCell {
	/**
	 * Enum of every different type of tile in MapCell
	 *
	 */
	public enum Cells {
		START('S', -1),
		WALL('W', 0),
		HOLE('H', -1000),
		FLOOR('F', -1),
		FLOORVISITED('V', -1),
		TELETRANSPORT('T', -1),
		GOLD('G', 1000),
		ENEMY20('2', -20),
		ENEMY50('5', -50);

		private final char asChar;
		private final int cost;
		
		/**
		 * Gets char used to create MapCell
		 * @return MapCell private variable asChar
		 */
		public char asChar() {
			return asChar;
		}

		/**
		 * Gets MapCell tile cost
		 * @return private variable indicating cost
		 */
		public int getCost() {
			return cost;
		}

		/**
		 * Private constructor for enum elements
		 * <p><b>Cells:</b> Enum of every different type of tile in MapCell</p>
		 * @param asChar Cell char value.
		 * @param cost associated to the tile's type
		 */
		private Cells(char asChar, int cost) {
			this.asChar = asChar;
			this.cost = cost;
		}
	}
		
	/**
	 * Images referencing MapCell
	 */
	protected BufferedImage[] textures;
	
	/**
	 * Cell identifier.
	 */
	protected final char id;
	
	/**
	 * Is cell walkable.
	 */
	protected final boolean walkable;

	/**
	 * MapCell constructor
	 * @param texture
	 * @param id
	 * @param isWalkable
	 */
	public MapCell(BufferedImage texture, char id, boolean isWalkable) {
		this.textures = new BufferedImage[1];
		this.textures[0] = texture;
		this.id = id;
		this.walkable = isWalkable;
	}
	
	/**
	 * MapCell constructor
	 * @param texture
	 * @param id
	 * @param isWalkable
	 */
	public MapCell(BufferedImage[] textures, char id, boolean isWalkable) {
		this.textures = textures;
		this.id = id;
		this.walkable = isWalkable;
	}

	/**
	 * Draws the image
	 * @param g Rendering component
	 * @param x coordinate to be passed onto drawImage
	 * @param y coordinate to be passed onto drawImage
	 * @param width be passed onto drawImage
	 * @param height to be passed onto drawImage
	 */
	public void render(Graphics g, int x, int y, int width, int height) {
		g.drawImage(textures[0], x, y, width, height, null);
	}

	/**
	 * Returns mapCell ID
	 * @return Cell identifier.
	 */
	public int getId() {
		return id;
	}
	
	/**
	 * Returns whether the cell is walkable or not
	 * @return Walkable true or false.
	 */
	public boolean isWalkable() {
		return walkable;
	}

}