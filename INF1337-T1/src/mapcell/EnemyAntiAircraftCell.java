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
	 * @param id TODO: Comentar. Não entendi o que o parâmetro faz. Comente seu código, Marcelo.
	 */
	public EnemyAntiAircraftCell(char id) {
		super(Assets.enemyaa, id);
	}
}
