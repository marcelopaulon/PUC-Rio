package mapcell;

import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.util.Hashtable;
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
		MOUNTAIN('M', 200),
		PLAIN('.', 1),
		ROCK('R', 5),
		ENEMYAA('C', 50),
		ENEMYBASE('z', -1),
		START('I', 0),
		END('F', 0);

		private final char asChar;
		private final int cost;
		
		/**
		 * Gets char used to create Mapcell
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
	
	public static Hashtable<Character, Integer> enemyBases = new Hashtable<Character, Integer>();
	
	{
		enemyBases.put('0', 1);
		enemyBases.put('1', 2);
		enemyBases.put('2', 3);
		enemyBases.put('3', 4);
		enemyBases.put('4', 5);
		enemyBases.put('5', 6);
		enemyBases.put('6', 7);
		enemyBases.put('7', 8);
		enemyBases.put('8', 9);
		enemyBases.put('9', 10);
		enemyBases.put('A', 11);
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
	 * MapCell constructor
	 * @param texture
	 * @param id
	 */
	public MapCell(BufferedImage texture, char id) {
		this.textures = new BufferedImage[1];
		this.textures[0] = texture;
		this.id = id;
	}
	
	/**
	 * MapCell constructor
	 * @param textures
	 * @param id
	 */
	public MapCell(BufferedImage[] textures, char id) {
		this.textures = textures;
		this.id = id;
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

}