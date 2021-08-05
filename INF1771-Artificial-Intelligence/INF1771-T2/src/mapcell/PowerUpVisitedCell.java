package mapcell;

import gfx.Assets;
/**
 * Map cell representing a visited power up
 *
 */
public class PowerUpVisitedCell extends MapCell {
	/**
	 * PowerUpVisitedCell constructor
	 * <p><b>PowerUpVisitedCell:</b> map cell representing a visited power up</p>
	 * @param id: Cell identifier.
	 */
	public PowerUpVisitedCell(char id) {
		super(Assets.powerupvisited, id, true);
	}
}
