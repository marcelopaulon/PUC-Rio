package map;

import mapcell.MapCell;

public class Map {
	private char[][] mapData;
	private int nRows, nColumns;

	public Map(char[][] data) {
		mapData = data;

		nRows = mapData.length;
		nColumns = mapData[0].length;
	}

	public int getNRows() {
		return nRows;
	}

	public int getNColumns() {
		return nColumns;
	}

	public char[] getNeighbors(int row, int column) {
		char empty = MapCell.Cells.EMPTY.asChar();
		char[] neighbors = { empty, empty, empty, empty };

		// North
		if (row - 1 >= nRows) {
			neighbors[0] = mapData[row - 2][column - 1];
		}

		// South
		if (row + 1 <= nRows) {
			neighbors[1] = mapData[row][column - 1];
		}

		// West
		if (column - 1 >= nColumns) {
			neighbors[2] = mapData[row - 1][column - 2];
		}

		// East
		if (column + 1 <= nColumns) {
			neighbors[3] = mapData[row - 1][column];
		}

		return neighbors;
	}

	public boolean setValue(int row, int column, MapCell.Cells value) {
		mapData[row - 1][column - 1] = value.asChar();
		return true;
	}

	public MapCell.Cells getValue(int row, int column) {
		if (mapData.length < row || mapData[0].length < column)
			return MapCell.Cells.EMPTY;

		char tileType = mapData[row - 1][column - 1];

		if (tileType == MapCell.Cells.NORMAL.asChar()) {
			return MapCell.Cells.NORMAL;
		} else if (tileType == MapCell.Cells.WATER.asChar()) {
			return MapCell.Cells.WATER;
		} else if (tileType == MapCell.Cells.ENEMYTOWER.asChar()) {
			return MapCell.Cells.ENEMYTOWER;
		} else if (tileType == MapCell.Cells.ENEMYBASE.asChar()) {
			return MapCell.Cells.ENEMYBASE;
		} else if (tileType == MapCell.Cells.EMPTY.asChar()) {
			return MapCell.Cells.EMPTY;
		}

		return null;
	}
}
