package mapcell;

import gfx.Assets;

/**
 * C�lula do mapa representando o ponto de chegada
 *
 */
public class EndCell extends MapCell {
	/**
	 * Construtor de EndCell
	 * <p><b>EndCell:</b> c�lula do mapa representando o ponto de chegada</p>
	 * @param id TODO: Comentar. N�o entendi o que o par�metro faz. Comente seu c�digo, Marcelo.
	 */
	public EndCell(char id) {
		super(Assets.end, id);
	}
}
