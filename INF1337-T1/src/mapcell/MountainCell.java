package mapcell;

import gfx.Assets;
/**
 * Célula do mapa representando montanhas
 *
 */
public class MountainCell extends MapCell {
	/**
	 * Construtor de MountainCell
	 * <p><b>MountainCell:</b> célula do mapa representando montanhas</p>
	 * @param id TODO: Comentar. Não entendi o que o parâmetro faz. Comente seu código, Marcelo.
	 */
	public MountainCell(char id) {
		super(Assets.mountain, id);
	}
}
