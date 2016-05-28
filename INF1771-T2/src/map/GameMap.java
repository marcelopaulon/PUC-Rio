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
		nRows = data.length;
		nColumns = data[0].length;
		
		mapData = new char[nRows+2][nColumns+2];
		
		char wallTile = MapCell.Cells.WALL.asChar();
		
		//First step: fill borders with walls and define start point and its neighbor tiles
		for(int i=0; i < nRows+2; i++){
			mapData[i][0] = wallTile;
			mapData[i][nColumns+1] = wallTile;
		}
		for(int i=0; i < nColumns+2; i++){
			mapData[0][i] = wallTile;
			mapData[nRows+1][i] = wallTile;
		}
		
		for(int i = 0; i < nRows; i++)
		{
			for(int j = 0; j < nColumns; j++)
			{
				mapData[i+1][j+1] = data[i][j];
				
				if(data[i][j] == MapCell.Cells.START.asChar())
				{
					startX = j + 1;
					startY = i + 1;
				}
			}
		}
		
		nRows = mapData.length;
		nColumns = mapData[0].length;
	}
	

	/**
	 * Gets the map raw data (char matrix)
	 * @return map data (char matrix)
	 */
	public char[][] getRawData()
	{
		return mapData;
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
		mapData[row][column] = value.asChar();
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

		char tileType = mapData[row][column];
		MapCell.Cells cellType = null;
				
		if (tileType == MapCell.Cells.START.asChar()) {
			cellType = MapCell.Cells.START;
		} else if (tileType == MapCell.Cells.WALL.asChar()) {
			cellType = MapCell.Cells.WALL;
		} else if (tileType == MapCell.Cells.HOLE.asChar()) {
			cellType = MapCell.Cells.HOLE;
		} else if (tileType == MapCell.Cells.POWERUP.asChar()) {
			cellType = MapCell.Cells.POWERUP;
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
