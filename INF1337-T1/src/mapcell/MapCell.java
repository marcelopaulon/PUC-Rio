package mapcell;

import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.util.Hashtable;
/**
 * Célula do mapa representando cada possível tile
 *
 */
public abstract class MapCell {
	/**
	 * Enum dos tipos diferentes de tile possíveis em um MapCell
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
		 * Pega char usado para construir o MapCell
		 * @return variável private asChar do MapCell
		 */
		public char asChar() {
			return asChar;
		}

		/**
		 * Pega custo do tile de MapCell
		 * @return variável private indicando o custo
		 */
		public int getCost() {
			return cost;
		}

		/**
		 * Construtor private que constrói os elementos deste enum
		 * <p><b>Cells:</b> enum dos tipos diferentes de tile possíveis em um MapCell</p>
		 * @param asChar Cell char value.
		 * @param cost Custo associado ao tipo de tile.
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
	 * Imagem referente ao mapcell
	 */
	protected BufferedImage texture;
	
	/**
	 * Cell identifier.
	 */
	protected final char id;

	/**
	 * Construtor de MapCell
	 * @param texture
	 * @param id
	 */
	public MapCell(BufferedImage texture, char id) {
		this.texture = texture;
		this.id = id;
	}

	/**
	 * Desenha a imagem
	 * @param g Componente de renderização TODO: Conferir se é isso mesmo
	 * @param x Coordenada x para ser passada para drawImage
	 * @param y Coordenada y para ser passada para drawImage
	 * @param width Largura para ser passada para drawImage
	 * @param height Altura para ser passada para drawImage
	 */
	public void render(Graphics g, int x, int y, int width, int height) {
		g.drawImage(texture, x, y, width, height, null);
	}

	/**
	 * Retorna id do mapCell
	 * @return Cell identifier.
	 */
	public int getId() {
		return id;
	}

}