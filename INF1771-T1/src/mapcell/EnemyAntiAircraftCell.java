package mapcell;

import gfx.Assets;
/**
 * Map cell representing anti-aerial enemy artillery
 *
 */
public class EnemyAntiAircraftCell extends MapCell {
	/**
	 * EnemyAntiAircraftCell constructor
	 * <p><b>EnemyAntiAircraftCell:</b> map cell representing anti-aerial enemy artillery</p>
	 * @param id Cell identifier.
	 */
	public EnemyAntiAircraftCell(char id) {
		super(Assets.enemyaa, id);
	}
}
