package mapcell;

import java.awt.Graphics;
import java.awt.image.BufferedImage;
/**
 * C�lula do mapa representando cada poss�vel tile
 *
 */
public abstract class MapCell {
	/**
	 * Enum dos tipos diferentes de tile poss�veis em um MapCell
	 *
	 */
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
		
		/**
		 * Pega char usado para construir o MapCell
		 * @return vari�vel private asChar do MapCell
		 */
		public char asChar() {
			return asChar;
		}

		/**
		 * Pega custo do tile de MapCell
		 * @return vari�vel private indicando o custo
		 */
		public int getCost() {
			return cost;
		}

		/**
		 * Construtor private que constr�i os elementos deste enum
		 * <p><b>Cells:</b> enum dos tipos diferentes de tile poss�veis em um MapCell</p>
		 * @param asChar TODO: Comentar. N�o entendi o que o par�metro faz. Comente seu c�digo, Marcelo.
		 * @param cost Custo associado ao tipo de tile.
		 */
		private Cells(char asChar, int cost) {
			this.asChar = asChar;
			this.cost = cost;
		}
	}

	/**
	 * Imagem referente ao mapcell
	 */
	protected BufferedImage texture;
	/**
	 * TODO: Comentar. N�o entendi o que a vari�vel faz. Comente seu c�digo, Marcelo.
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
	 * @param g Componente de renderiza��o TODO: Conferir se � isso mesmo
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
	 * @return TODO: Comentar. N�o entendi a finalidade do id. Comente seu c�digo, Marcelo.
	 */
	public int getId() {
		return id;
	}

}