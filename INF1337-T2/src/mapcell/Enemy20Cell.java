package mapcell;

import gfx.Assets;
/**
 * Map cell representing an enemy that does 20 damage
 *
 */
public class Enemy20Cell extends MapCell {
	/**
	 * Enemy20Cell constructor
	 * <p><b>Enemy20Cell:</b> map cell representing an enemy that does 20 damage</p>
	 * @param id: Cell identifier.
	 */
	public Enemy20Cell(char id) {
		super(Assets.enemy20Down, id, true);
	}
}
