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
	 * @param id Cell identifier.
	 */
	public MountainCell(char id) {
		super(Assets.mountain, id);
	}
}
