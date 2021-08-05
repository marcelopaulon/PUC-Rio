package mapcell;

import gfx.Assets;
/**
 * Map cell representing rocks
 *
 */
public class RockCell extends MapCell {
	/**
	 * RockCell constructors
	 * <p><b>RockCell:</b> map cell representing rocks</p>
	 * @param id Cell identifier.
	 */
	public RockCell(char id) {
		super(Assets.rock, id);
	}
}
