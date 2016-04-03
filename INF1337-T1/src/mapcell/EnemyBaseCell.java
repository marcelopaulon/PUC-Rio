package mapcell;

import gfx.Assets;
/**
 * C�lula do mapa representando bases inimigas
 *
 */
public class EnemyBaseCell extends MapCell {
	/**
	 * Construtor de EnemyBaseCell
	 * <p><b>EnemyBaseCell:</b> c�lula do mapa representando bases inimigas</p>
	 * @param id Cell identifier.
	 */
	public EnemyBaseCell(char id) {
		super(Assets.enemybase, id);
	}
}
