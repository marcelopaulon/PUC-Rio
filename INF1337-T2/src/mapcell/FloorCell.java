package mapcell;

import gfx.Assets;
/**
 * Map cell representing the a floor
 *
 */
public class FloorCell extends MapCell {
	/**
	 * FloorCell constructor
	 * <p><b>FloorCell:</b> map cell representing the a floor</p>
	 * @param id: Cell identifier.
	 */
	public FloorCell(char id) {
		super(Assets.floor, id, true);
	}
}
