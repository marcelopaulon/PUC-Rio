package mapcell;

import gfx.Assets;

/**
 * Map cell representing a possible hole cell
 *
 */
public class MightHaveHoleCell extends MapCell {
	/**
	 * MightHaveHoleCell constructor
	 * <p><b>MightHaveHoleCell:</b> map cell representing a possible hole cell</p>
	 * @param id: Cell identifier.
	 */
	public MightHaveHoleCell(char id) {
		super(Assets.mightHaveHole, id, true);
	}
}
