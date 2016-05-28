package mapcell;

import gfx.Assets;
/**
 * Map cell representing a hole
 *
 */
public class HoleCell extends MapCell {
	/**
	 * HoleCell constructor
	 * <p><b>HoleCell:</b> map cell representing a hole</p>
	 * @param id: Cell identifier.
	 */
	public HoleCell(char id) {
		super(Assets.hole, id, true);
	}
}
