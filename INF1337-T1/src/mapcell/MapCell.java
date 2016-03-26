package mapcell;

import java.awt.Graphics;
import java.awt.image.BufferedImage;

public abstract class MapCell {
	public enum Cells {
		MOUNTAIN('M', 200),
		PLAIN('.', 1),
		ROCK('R', 5),
		ENEMYAA('C', 50),
		ENEMYBASE('B', 1),
		START('I', 0),
		END('F', 0);

		private final char asChar;
		private final int cost;

		public char asChar() {
			return asChar;
		}

		public int getCost() {
			return cost;
		}

		private Cells(char asChar, int cost) {
			this.asChar = asChar;
			this.cost = cost;
		}
	}

	protected BufferedImage texture;
	protected final char id;

	public MapCell(BufferedImage texture, char id) {
		this.texture = texture;
		this.id = id;
	}

	public void render(Graphics g, int x, int y, int width, int height) {
		g.drawImage(texture, x, y, width, height, null);
	}

	public int getId() {
		return id;
	}

}