package mapcell;

import gfx.Assets;
/**
 * Célula do mapa representando baterias anti-aéreas inimigas
 *
 */
public class EnemyAntiAircraftCell extends MapCell {
	/**
	 * Construtor de EnemyAntiAircraftCell
	 * <p><b>EnemyAntiAircraftCell:</b> célula do mapa representando baterias anti-aéreas inimigas</p>
	 * @param id Cell identifier.
	 */
	public EnemyAntiAircraftCell(char id) {
		super(Assets.enemyaa, id);
	}
}
