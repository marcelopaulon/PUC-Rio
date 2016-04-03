package mapcell;

import gfx.Assets;
/**
 * Célula do mapa representando células visitadas pelo AStar
 *
 */
public class VisitedCell extends MapCell {
	/**
	 * Construtor de VisitedCell
	 * <p><b>StartCell:</b> célula do mapa representando células visitadas pelo AStar</p>
	 * @param id TODO: Cell identifier.
	 */
	public VisitedCell(char id) {
		super(Assets.visited, id);
	}
}