package mapcell;

import gfx.Assets;
/**
 * Célula do mapa representando planícies
 *
 */
public class PlainCell extends MapCell {
	/**
	 * Construtor de PlainCell
	 * <p><b>PlainCell:</b> célula do mapa representando planícies</p>
	 * @param id TODO: Comentar. Não entendi o que o parâmetro faz. Comente seu código, Marcelo.
	 */
	public PlainCell(char id) {
		super(Assets.plain, id);
	}
}
