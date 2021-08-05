package mapcell;

import gfx.Assets;
/**
 * Map cell representing mountains
 *
 */
public class MountainCell extends MapCell {
	/**
	 * MountainCell constructor
	 * <p><b>MountainCell:</b> map cell representing mountains</p>
	 * @param id Cell identifier.
	 */
	public MountainCell(char id) {
		super(Assets.mountain, id);
	}
}
