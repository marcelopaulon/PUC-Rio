package map;

import java.awt.Color;
import java.awt.Graphics;

import javax.swing.BorderFactory;
import javax.swing.JPanel;

import gfx.Assets;
import mapcell.GrassCell;
import mapcell.MapCell;
import mapcell.WaterCell;
import mapcell.StartCell;
import mapcell.EndCell;
import mapcell.VisitedCell;

public class MapPanel extends JPanel {
	/**
	 * 
	 */
	private static final long serialVersionUID = -8607607402685333888L;

	private Map loadedMap;

	Graphics g;

	public MapPanel() {
		setBorder(BorderFactory.createLineBorder(Color.black));
	}

	private MapCell GrassCell = new GrassCell(MapCell.Cells.NORMAL.asChar());
	private MapCell WaterCell = new WaterCell(MapCell.Cells.WATER.asChar());
	private MapCell StartCell = new StartCell(MapCell.Cells.START.asChar());
	private MapCell EndCell = new EndCell(MapCell.Cells.END.asChar());
	private MapCell VisitedCell = new VisitedCell('\0');

	public boolean renderMap() {
		int width = getWidth();
		int height = getHeight();

		int numcols = loadedMap.getNColumns(), numrows = loadedMap.getNRows();

		// Clear the panel
		g.setColor(Color.BLACK);
		g.fillRect(0, 0, width, height);

		double rectWidth = Assets.TILE_WIDTH;
		double rectHeight = Assets.TILE_HEIGHT;

		if (numrows * Assets.TILE_HEIGHT > height) {
			rectHeight = (height / numrows);
		}

		if (numcols * Assets.TILE_WIDTH > width) {
			rectWidth = (width / numcols);
		}

		// Draw the grid
		for (int i = 1; i <= numrows; i++) {
			for (int j = 1; j <= numcols; j++) {
				int y = (int) ((i - 1) * rectHeight);
				int x = (int) ((j - 1) * rectWidth);
				if(loadedMap.pathData[i - 1][j - 1] == 'X')
				{
					VisitedCell.render(g, x, y, (int) rectWidth, (int) rectHeight);
				}
				else
				{
					MapCell.Cells et = loadedMap.getValue(i, j);
					MapCell cell = getTile(et);
					cell.render(g, x, y, (int) rectWidth, (int) rectHeight);	
				}
			}
		}
		
		return true;
	}

	public void loadMap(Map map) {
		loadedMap = map;
		this.repaint();
	}

	@Override
	public void paintComponent(Graphics g) {
		super.paintComponent(g);
		this.g = g;
		
		if(loadedMap != null)
		{
			renderMap();
		}
	}

	private MapCell getTile(MapCell.Cells value) {
		if (value == MapCell.Cells.NORMAL)
			return GrassCell;
		if (value == MapCell.Cells.WATER)
			return WaterCell;
		if (value == MapCell.Cells.START)
			return StartCell;
		if (value == MapCell.Cells.END)
			return EndCell;

		return WaterCell;
	}
}
