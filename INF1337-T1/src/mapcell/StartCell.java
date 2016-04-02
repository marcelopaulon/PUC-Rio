package mapcell;

import gfx.Assets;
/**
 * Célula do mapa representando a posição inicial
 *
 */
public class StartCell extends MapCell {
	/**
	 * Construtor de StartCell
	 * <p><b>StartCell:</b> célula do mapa representando a posição inicial</p>
	 * @param id TODO: Comentar. Não entendi o que o parâmetro faz. Comente seu código, Marcelo.
	 */
	public StartCell(char id) {
		super(Assets.start, id);
	}
}
