package mapcell;

import gfx.Assets;
/**
 * Célula do mapa representando a posição inicial
 *
 */
public class StartCell extends MapCell {
	/**
	 * Construtor de StartCell
	 * <p><b>StartCell:</b> célula do mapa representando a posição inicial</p>
	 * @param id TODO: Cell identifier.
	 */
	public StartCell(char id) {
		super(Assets.start, id);
	}
}
