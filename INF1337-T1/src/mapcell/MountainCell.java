package mapcell;

import gfx.Assets;
/**
 * C�lula do mapa representando montanhas
 *
 */
public class MountainCell extends MapCell {
	/**
	 * Construtor de MountainCell
	 * <p><b>MountainCell:</b> c�lula do mapa representando montanhas</p>
	 * @param id Cell identifier.
	 */
	public MountainCell(char id) {
		super(Assets.mountain, id);
	}
}
