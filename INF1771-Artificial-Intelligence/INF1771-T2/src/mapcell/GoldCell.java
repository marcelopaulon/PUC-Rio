package mapcell;

import gfx.Assets;
/**
 * Map cell representing gold
 *
 */
public class GoldCell extends MapCell {
	/**
	 * GoldCell constructor
	 * <p><b>GoldCell:</b> map cell representing gold</p>
	 * @param id: Cell identifier.
	 */
	public GoldCell(char id) {
		super(Assets.gold, id, true);
	}
}
