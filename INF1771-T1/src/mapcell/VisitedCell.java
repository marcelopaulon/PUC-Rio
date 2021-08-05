package mapcell;

import gfx.Assets;
/**
 * Map cell representing cells visited by AStar
 *
 */
public class VisitedCell extends MapCell {
	/**
	 * VisitedCell cosntructor
	 * <p><b>StartCell:</b> map cells representing cells visited by AStar</p>
	 * @param id TODO: Cell identifier.
	 */
	public VisitedCell(char id) {
		super(Assets.visited, id);
	}
}