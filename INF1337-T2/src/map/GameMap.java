package map;

import mapcell.MapCell;

/**
 * The game's map
 */
public class GameMap {
	
	/**
	 * Matrix representation of the game's map
	 */
	private char[][] mapData;
		
	/**
	 * <p><b>nRows</b> - Number of rows in the matrix</p>
	 * <p><b>nColumns</b> - Number of columns in the matrix</p>
	 */
	private int nRows, nColumns;
	
	/**
	 * <p><b>startX</b> - Start/End Tile's Column of the map</p>
	 * <p><b>startY</b> - Start/End Tile's Row of the map</p>
	 */	
	public int startX, startY;

	/**
	 * GameMap constructor
	 * <p><b>GameMap:</b> Matrix representing the game map</p>
	 * @param data Matrix used to generate the map, following specifications from the assignment
	 */
	public GameMap(char[][] data) {
		mapData = data;

		nRows = mapData.length;
		nColumns = mapData[0].length;
		
		for(int i = 0; i < nRows; i++)
		{
			for(int j = 0; j < nColumns; j++)
			{
				if(mapData[i][j] == MapCell.Cells.START.asChar())
				{
					startX = j + 1;
					startY = i + 1;
				}
			}
		}
	}
	
	/**
	 * Clears the path ran by the agent
	 */
	public void clearPath()
	{
		nRows = mapData.length;
		nColumns = mapData[0].length;
		
		for(int i = 0; i < nRows; i++)
		{
			for(int j = 0; j < nColumns; j++)
			{
				if(mapData[i][j] == 'V') mapData[i][j] = 'F';
			}
		}
	}
	
	/**
	 * Visit cell
	 */
	public void visit(int X, int Y)
	{
		if(X == 1 && Y == 1) return;
		mapData[Y][X] = 'V';
	}

	/**
	 * Takes the number of rows from GameMap
	 * @return number of rows from GameMap
	 */
	public int getNRows() {
		return nRows;
	}

	/**
	 * Takes the number of columns from GameMap
	 * @return number of columns from GameMap
	 */
	public int getNColumns() {
		return nColumns;
	}

	/**
	 * Modifies the type of terrain from a certain GameMap cell
	 * @param row Y coordinate of the cell to be modified
	 * @param column X coordinate of the cell to be modified
	 * @param value Cell's new value
	 * @return true
	 */
	public boolean setValue(int row, int column, MapCell.Cells value) {
		mapData[row - 1][column - 1] = value.asChar();
		return true;
	}

	/**
	 * Indicates the type of terrain from a certain GameMap cell
	 * @param row Cell's Y coordinate
	 * @param column Cell's X coordinate
	 * @return the cell's type of terrain or <b>null</b> in case the cell
	 * searched for is outside the matrix.
	 */
	public MapCell.Cells getValue(int row, int column) {
		if (mapData.length < row || mapData[0].length < column)
			return null;

		char tileType = mapData[row - 1][column - 1];
		MapCell.Cells cellType = null;
				
		if (tileType == MapCell.Cells.START.asChar()) {
			cellType = MapCell.Cells.START;
		} else if (tileType == MapCell.Cells.WALL.asChar()) {
			cellType = MapCell.Cells.WALL;
		} else if (tileType == MapCell.Cells.HOLE.asChar()) {
			cellType = MapCell.Cells.HOLE;
		} else if (tileType == MapCell.Cells.FLOOR.asChar()) {
			cellType = MapCell.Cells.FLOOR;
		} else if (tileType == MapCell.Cells.FLOORVISITED.asChar()) {
			cellType = MapCell.Cells.FLOORVISITED;
		} else if (tileType == MapCell.Cells.TELETRANSPORT.asChar()) {
			cellType = MapCell.Cells.TELETRANSPORT;
		} else if (tileType == MapCell.Cells.GOLD.asChar()) {
			cellType = MapCell.Cells.GOLD;
		} else if (tileType == MapCell.Cells.ENEMY20.asChar()) {
			cellType = MapCell.Cells.ENEMY20;
		} else if (tileType == MapCell.Cells.ENEMY50.asChar()) {
			cellType = MapCell.Cells.ENEMY50;
		}
		
		return cellType;
	}
}
