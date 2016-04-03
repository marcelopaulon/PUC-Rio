package mapcell;

import gfx.Assets;
/**
 * Célula do mapa representando bases inimigas
 *
 */
public class EnemyBaseCell extends MapCell {
	/**
	 * Construtor de EnemyBaseCell
	 * <p><b>EnemyBaseCell:</b> célula do mapa representando bases inimigas</p>
	 * @param id Cell identifier.
	 */
	public EnemyBaseCell(char id) {
		super(Assets.enemybase, id);
	}
}
