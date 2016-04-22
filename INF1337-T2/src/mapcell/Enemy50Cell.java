package mapcell;

import gfx.Assets;
/**
 * Map cell representing an enemy that does 50 damage
 *
 */
public class Enemy50Cell extends MapCell {
	/**
	 * Enemy50Cell constructor
	 * <p><b>Enemy50Cell:</b> map cell representing an enemy that does 50 damage</p>
	 * @param id: Cell identifier.
	 */
	public Enemy50Cell(char id) {
		super(Assets.enemy50Down, id, true);
	}
}
