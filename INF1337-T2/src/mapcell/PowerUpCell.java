package mapcell;

import gfx.Assets;
/**
 * Map cell representing a hole
 *
 */
public class PowerUpCell extends MapCell {
	/**
	 * PowerUpCell constructor
	 * <p><b>PowerUpCell:</b> map cell representing a power up</p>
	 * @param id: Cell identifier.
	 */
	public PowerUpCell(char id) {
		super(Assets.powerup, id, true);
	}
}
