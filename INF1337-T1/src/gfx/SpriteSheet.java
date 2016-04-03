package gfx;

import java.awt.image.BufferedImage;

/**
 * Class used to store a Sprite Sheet
 */
public class SpriteSheet {
	/**
	 * Arquivo de imagem contendo os tiles que serão usados
	 */
	private BufferedImage sheet;

	/**
	 * Construtor de SpriteSheet
	 * <p><b>SpriteSheet:</b> Creates a sprite sheet object.</p>
	 * @param sheet Sheet image
	 */
	public SpriteSheet(BufferedImage sheet) {
		this.sheet = sheet;
	}

	/**
	 * Divide a imagem em partes menores (para especificar o tamanho de cada tile) 
	 * @param x Coordenada x onde a subimagem (tile) começa
	 * @param y Coordenada y onde a subimagem (tile) começa
	 * @param width Largura da subimagem (tile)
	 * @param height Altura da subimagem (tile)
	 * @return a subimagem carregada pelo programa em uma BufferedImage
	 */
	public BufferedImage crop(int x, int y, int width, int height) {
		return sheet.getSubimage(x, y, width, height);
	}
}
