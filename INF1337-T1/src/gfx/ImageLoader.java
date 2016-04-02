package gfx;

import java.awt.image.BufferedImage;
import java.io.IOException;

import javax.imageio.ImageIO;

/**
 * Carrega um arquivo de imagem
 */
public class ImageLoader {
	/**
	 * Lê o arquivo de imagem
	 * @param path Caminho do arquivo de imagem
	 * @return A leitura do arquivo de imagem
	 * ou <b>null</b> se não conseguir ler o arquivo
	 */
	public static BufferedImage loadImage(String path) {
		try {
			return ImageIO.read(ImageLoader.class.getResource(path));
		} catch (IOException e) {
			e.printStackTrace();
			System.exit(1);
		}
		return null;
	}
}
