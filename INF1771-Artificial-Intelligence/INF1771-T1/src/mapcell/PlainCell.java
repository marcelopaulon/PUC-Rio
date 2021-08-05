package mapcell;

import gfx.Assets;
/**
 * Map cell representing plains
 *
 */
public class PlainCell extends MapCell {
	/**
	 * PlainCell constructor
	 * <p><b>PlainCell:</b> map cells representing plains</p>
	 * @param id Cell identifier.
	 */
	public PlainCell(char id) {
		super(Assets.plain, id);
	}
}
