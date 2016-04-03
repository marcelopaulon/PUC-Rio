package mapcell;

import gfx.Assets;
/**
 * C�lula do mapa representando plan�cies
 *
 */
public class PlainCell extends MapCell {
	/**
	 * Construtor de PlainCell
	 * <p><b>PlainCell:</b> c�lula do mapa representando plan�cies</p>
	 * @param id Cell identifier.
	 */
	public PlainCell(char id) {
		super(Assets.plain, id);
	}
}
