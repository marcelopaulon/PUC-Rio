package map;

import pathfinding.Node;
import mapcell.MapCell;

/**
 * Mapa do jogo
 */
public class GameMap {
	
	/**
	 * Matriz representando o mapa do jogo
	 */
	private char[][] mapData;
	
	/**
	 * Matriz representando o path escolhido pelo AStar.
	 * <p>As células que representam o caminho são marcadas por um X
	 * (ver AStar.java -> linha 93)</p>  
	 */
	public char[][] pathData;
	
	/**
	 * <p><b>nRows</b> - número de linhas da matriz</p>
	 * <p><b>nColumns</b> - número de colunas da matriz</p>
	 */
	private int nRows, nColumns;
	
	/**
	 * TODO: revisar se isso está correto
	 * <p><b>startX</b> - Coluna do ponto de início do mapa</p>
	 * <p><b>startY</b> - Linha do ponto de início do mapa</p>
	 * <p><b>endX</b> - Coluna do ponto de chegada do mapa</p>
	 * <p><b>endY</b> - Linha do ponto de chegada do mapa</p>
	 */	
	public int startX, startY, endX, endY;

	/**
	 * Construtor de GameMap
	 * <p><b>GameMap:</b> matriz representando o mapa do jogo</p>
	 * @param data Matriz que será usada para gerar o mapa, segundo especificações do enunciado do trabalho
	 */
	public GameMap(char[][] data) {
		mapData = data;

		nRows = mapData.length;
		nColumns = mapData[0].length;
		
		pathData = new char[nRows][nColumns];
		
		for(int i = 0; i < nRows; i++)
		{
			for(int j = 0; j < nColumns; j++)
			{
				if(mapData[i][j] == MapCell.Cells.START.asChar())
				{
					startX = j + 1;
					startY = i + 1;
				}
				else if(mapData[i][j] == MapCell.Cells.END.asChar())
				{
					endX = j + 1;
					endY = i + 1;
				}
			}
		}
	}
	
	/**
	 * Limpa o path gerado pelo AStar
	 */
	public void clearPath()
	{
		nRows = mapData.length;
		nColumns = mapData[0].length;
		
		pathData = new char[nRows][nColumns];
		
		for(int i = 0; i < nRows; i++)
		{
			for(int j = 0; j < nColumns; j++)
			{
				pathData[i][j] = '\0';
			}
		}
	}

	/**
	 * Pega número de linhas do GameMap
	 * @return número de linhas do GameMap
	 */
	public int getNRows() {
		return nRows;
	}

	/**
	 * Pega número de colunas do GameMap
	 * @return número de colunas do GameMap
	 */
	public int getNColumns() {
		return nColumns;
	}

	/**
	 * Busca nós vizinhos a uma célula do GameMap
	 * @param row Coordenada Y da célula cujos vizinhos serão buscados
	 * @param column Coordenada X da célula cujos vizinho serão buscados
	 * @return Vetor de nós contendo as coordenadas dos vizinhos da célula 
	 * cujas coordenadas foram passadas como parâmetro.
	 */
	public Node[] getNeighbors(int row, int column) {
		Node[] neighbors = new Node[4];

		// North
		if (row - 1 > 0) {
			neighbors[0] = getValue(row - 1, column);
		}

		// South
		if (row + 1 <= nRows) {
			neighbors[1] = getValue(row + 1, column);
		}

		// West
		if (column - 1 > 0) {
			neighbors[2] = getValue(row, column - 1);
		}

		// East
		if (column + 1 <= nColumns) {
			neighbors[3] = getValue(row, column + 1);
		}
		
		return neighbors;
	}

	/**
	 * Modifica tipo de terreno de uma determinada célula do GameMap
	 * @param row Coordenada Y da célula que se deseja modificar
	 * @param column Coordenada X da célula que se deseja modificar
	 * @param value Novo valor da célula
	 * @return true
	 */
	public boolean setValue(int row, int column, MapCell.Cells value) {
		mapData[row - 1][column - 1] = value.asChar();
		return true;
	}

	/**
	 * Indica tipo de terreno de determinada célula
	 * @param row Coordenada Y da célula
	 * @param column Coordenada X da célula
	 * @return Node indicando coordenadas X e Y e o tipo de terreno da célula ou <b>null</b> caso a célula
	 * buscada esteja fora da matriz.
	 */
	public Node getValue(int row, int column) {
		if (mapData.length < row || mapData[0].length < column)
			return null;

		char tileType = mapData[row - 1][column - 1];
		MapCell.Cells cellType = null;
		
		if (tileType == MapCell.Cells.MOUNTAIN.asChar()) {
			cellType = MapCell.Cells.MOUNTAIN;
		} else if (tileType == MapCell.Cells.PLAIN.asChar()) {
			cellType = MapCell.Cells.PLAIN;
		} else if (tileType == MapCell.Cells.ROCK.asChar()) {
			cellType = MapCell.Cells.ROCK;
		} else if (tileType == MapCell.Cells.ENEMYAA.asChar()) {
			cellType = MapCell.Cells.ENEMYAA;
		} else if (tileType == MapCell.Cells.ENEMYBASE.asChar()) {
			cellType = MapCell.Cells.ENEMYBASE;
		} else if (tileType == MapCell.Cells.START.asChar()) {
			cellType = MapCell.Cells.START;
		} else if (tileType == MapCell.Cells.END.asChar()) {
			cellType = MapCell.Cells.END;
		}
		
		return new Node(column, row, cellType);
	}
}
