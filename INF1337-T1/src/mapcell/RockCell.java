package mapcell;

import gfx.Assets;
/**
 * Célula do mapa representando rochas
 *
 */
public class RockCell extends MapCell {
	/**
	 * Construtor de RockCell
	 * <p><b>RockCell:</b> célula do mapa representando rochas</p>
	 * @param id Cell identifier.
	 */
	public RockCell(char id) {
		super(Assets.rock, id);
	}
}
