package map;

import pathfinding.Node;
import mapcell.MapCell;

public class GameMap {
	private char[][] mapData;
	public char[][] pathData;
	private int nRows, nColumns;
	
	public int startX, startY, endX, endY;

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

	public boolean setValue(int row, int column, MapCell.Cells value) {
		mapData[row - 1][column - 1] = value.asChar();
		return true;
	}

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
