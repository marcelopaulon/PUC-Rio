package mapcell;

import gfx.Assets;
/**
 * Map cell representing the end point
 *
 */
public class EndCell extends MapCell {
	/**
	 * EndCell constructor
	 * <p><b>EndCell:</b> map cell representing the end point</p>
	 * @param id Cell identifier.
	 */
	public EndCell(char id) {
		super(Assets.end, id);
	}
}
