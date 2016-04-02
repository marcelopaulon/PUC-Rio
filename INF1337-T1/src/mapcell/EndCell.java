package mapcell;

import gfx.Assets;

/**
 * Célula do mapa representando o ponto de chegada
 *
 */
public class EndCell extends MapCell {
	/**
	 * Construtor de EndCell
	 * <p><b>EndCell:</b> célula do mapa representando o ponto de chegada</p>
	 * @param id TODO: Comentar. Não entendi o que o parâmetro faz. Comente seu código, Marcelo.
	 */
	public EndCell(char id) {
		super(Assets.end, id);
	}
}
