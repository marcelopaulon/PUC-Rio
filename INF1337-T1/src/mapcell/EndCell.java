package mapcell;

import gfx.Assets;

/**
 * C�lula do mapa representando o ponto de chegada
 *
 */
public class EndCell extends MapCell {
	/**
	 * Construtor de EndCell
	 * <p><b>EndCell:</b> c�lula do mapa representando o ponto de chegada</p>
	 * @param id Cell identifier.
	 */
	public EndCell(char id) {
		super(Assets.end, id);
	}
}
