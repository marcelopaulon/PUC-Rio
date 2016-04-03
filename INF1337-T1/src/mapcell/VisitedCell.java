package mapcell;

import gfx.Assets;
/**
 * C�lula do mapa representando c�lulas visitadas pelo AStar
 *
 */
public class VisitedCell extends MapCell {
	/**
	 * Construtor de VisitedCell
	 * <p><b>StartCell:</b> c�lula do mapa representando c�lulas visitadas pelo AStar</p>
	 * @param id TODO: Cell identifier.
	 */
	public VisitedCell(char id) {
		super(Assets.visited, id);
	}
}