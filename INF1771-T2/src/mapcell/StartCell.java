package mapcell;

import gfx.Assets;
/**
 * Map cell representing the starting/ending point
 *
 */
public class StartCell extends MapCell {
	/**
	 * StartCell constructor
	 * <p><b>StartCell:</b> map cell representing the starting/ending point</p>
	 * @param id: Cell identifier.
	 */
	public StartCell(char id) {
		super(Assets.start, id, true);
	}
}
