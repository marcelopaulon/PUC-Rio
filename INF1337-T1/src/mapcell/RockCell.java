package mapcell;

import gfx.Assets;
/**
 * C�lula do mapa representando rochas
 *
 */
public class RockCell extends MapCell {
	/**
	 * Construtor de RockCell
	 * <p><b>RockCell:</b> c�lula do mapa representando rochas</p>
	 * @param id Cell identifier.
	 */
	public RockCell(char id) {
		super(Assets.rock, id);
	}
}
