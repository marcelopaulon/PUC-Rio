package mapcell;

import gfx.Assets;
/**
 * Map cell representing enemy bases
 *
 */
public class EnemyBaseCell extends MapCell {
	/**
	 * EnemyBaseCell constructor
	 * <p><b>EnemyBaseCell:</b> map cell representing enemy bases</p>
	 * @param id Cell identifier.
	 */
	public EnemyBaseCell(char id) {
		super(Assets.enemybase, id);
	}
}
