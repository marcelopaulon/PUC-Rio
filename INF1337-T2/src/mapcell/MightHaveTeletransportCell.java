package mapcell;

import gfx.Assets;

/**
 * Map cell representing a possible teletransport cell
 *
 */
public class MightHaveTeletransportCell extends MapCell {
	/**
	 * MightHaveTeletransportCell constructor
	 * <p><b>MightHaveHoleCell:</b> map cell representing a possible teletransport cell</p>
	 * @param id: Cell identifier.
	 */
	public MightHaveTeletransportCell(char id) {
		super(Assets.mightHaveTeletransport, id, true);
	}
}
