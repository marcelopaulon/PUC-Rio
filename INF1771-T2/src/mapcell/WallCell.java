package mapcell;

import gfx.Assets;
/**
 * Map cell representing walls
 *
 */
public class WallCell extends MapCell {
	/**
	 * WallCell constructor
	 * <p><b>WallCell:</b> map cell representing walls</p>
	 * @param id: Cell identifier.
	 */
	public WallCell(char id) {
		super(Assets.wall, id, false);
	}
}