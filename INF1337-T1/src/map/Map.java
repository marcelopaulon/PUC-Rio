package map;

import pathfinding.Node;
import mapcell.MapCell;

public class Map {
	private char[][] mapData;
	private int nRows, nColumns;
	
	public int startX, startY, endX, endY;

	public Map(char[][] data) {
		mapData = data;

		nRows = mapData.length;
		nColumns = mapData[0].length;
		
		for(int i = 0; i < nRows; i++)
		{
			for(int j = 0; j < nColumns; j++)
			{
				if(mapData[i][j] == MapCell.Cells.START.asChar())
				{
					startX = j;
					startY = i;
				}
				else if(mapData[i][j] == MapCell.Cells.END.asChar())
				{
					endX = j;
					endY = i;
				}
			}
		}
	}

	public int getNRows() {
		return nRows;
	}

	public int getNColumns() {
		return nColumns;
	}

	public Node[] getNeighbors(int row, int column) {
		Node[] neighbors = new Node[4];

		// North
		if (row - 1 > 0) {
			neighbors[0] = new Node(column, row - 1);
		}

		// South
		if (row + 1 <= nRows) {
			neighbors[1] = new Node(column, row + 1);
		}

		// West
		if (column - 1 > 0) {
			neighbors[2] = new Node(column - 1, row);
		}

		// East
		if (column + 1 <= nColumns) {
			neighbors[3] = new Node(column + 1, row);
		}
		
		return neighbors;
	}

	public boolean setValue(int row, int column, MapCell.Cells value) {
		mapData[row - 1][column - 1] = value.asChar();
		return true;
	}

	public MapCell.Cells getValue(int row, int column) {
		if (mapData.length < row || mapData[0].length < column)
			return null;

		char tileType = mapData[row - 1][column - 1];

		if (tileType == MapCell.Cells.NORMAL.asChar()) {
			return MapCell.Cells.NORMAL;
		} else if (tileType == MapCell.Cells.WATER.asChar()) {
			return MapCell.Cells.WATER;
		} else if (tileType == MapCell.Cells.START.asChar()) {
			return MapCell.Cells.START;
		} else if (tileType == MapCell.Cells.END.asChar()) {
			return MapCell.Cells.END;
		}

		return null;
	}
}
