package mapcell;

import gfx.Assets;
/**
 * C�lula do mapa representando a posi��o inicial
 *
 */
public class StartCell extends MapCell {
	/**
	 * Construtor de StartCell
	 * <p><b>StartCell:</b> c�lula do mapa representando a posi��o inicial</p>
	 * @param id TODO: Cell identifier.
	 */
	public StartCell(char id) {
		super(Assets.start, id);
	}
}
