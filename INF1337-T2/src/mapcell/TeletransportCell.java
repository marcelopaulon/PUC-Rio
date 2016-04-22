package mapcell;

import gfx.Assets;
/**
 * Map cell representing a teletransport unit
 *
 */
public class TeletransportCell extends MapCell {
	/**
	 * TeletransportCell constructor
	 * <p><b>TeletransportCell:</b> map cell representing a teletransport unit</p>
	 * @param id: Cell identifier.
	 */
	public TeletransportCell(char id) {
		super(Assets.teletransport, id, true);
	}
}
