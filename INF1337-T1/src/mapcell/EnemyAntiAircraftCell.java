package mapcell;

import gfx.Assets;
/**
 * C�lula do mapa representando baterias anti-a�reas inimigas
 *
 */
public class EnemyAntiAircraftCell extends MapCell {
	/**
	 * Construtor de EnemyAntiAircraftCell
	 * <p><b>EnemyAntiAircraftCell:</b> c�lula do mapa representando baterias anti-a�reas inimigas</p>
	 * @param id Cell identifier.
	 */
	public EnemyAntiAircraftCell(char id) {
		super(Assets.enemyaa, id);
	}
}
