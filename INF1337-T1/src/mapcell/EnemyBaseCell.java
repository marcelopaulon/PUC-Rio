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
	 * @param id TODO: Comentar. Não entendi o que o parâmetro faz. Comente seu código, Marcelo.
	 */
	public EnemyBaseCell(char id) {
		super(Assets.enemybase, id);
	}
}
