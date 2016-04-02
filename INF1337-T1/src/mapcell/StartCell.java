package mapcell;

import gfx.Assets;
/**
 * C�lula do mapa representando a posi��o inicial
 *
 */
public class StartCell extends MapCell {
	/**
	 * Construtor de StartCell
	 * <p><b>StartCell:</b> c�lula do mapa representando a posi��o inicial</p>
	 * @param id TODO: Comentar. N�o entendi o que o par�metro faz. Comente seu c�digo, Marcelo.
	 */
	public StartCell(char id) {
		super(Assets.start, id);
	}
}
