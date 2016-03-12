package mapcell;

import java.awt.Graphics;
import java.awt.image.BufferedImage;

public abstract class MapCell {
	public enum Cells {
		EMPTY('E', 0), NORMAL('N', 5), WATER('W', 1), ENEMYTOWER('T', 60), ENEMYBASE('E', 0);

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