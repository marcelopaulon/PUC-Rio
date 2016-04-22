package mapcell;

import gfx.Assets;
/**
 * Map cell representing a visited floor
 *
 */
public class FloorVisitedCell extends MapCell {
	/**
	 * FloorVisitedCell constructor
	 * <p><b>FloorVisitedCell:</b> map cell representing a visited floor</p>
	 * @param id: Cell identifier.
	 */
	public FloorVisitedCell(char id) {
		super(Assets.floorvisited, id, true);
	}
}
