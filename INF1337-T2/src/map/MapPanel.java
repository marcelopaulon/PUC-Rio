package map;

import java.awt.Color;
import java.awt.Graphics;

import javax.swing.BorderFactory;
import javax.swing.JPanel;

import gfx.Assets;
import mapcell.*;

/**
 * Panel where the map is rendered
 */
public class MapPanel extends JPanel {
	/**
	 * Class serialization version identifier
	 * @see <a href=http://blog.caelum.com.br/entendendo-o-serialversionuid/>Entendendo o serialVersionUID</a>
	 */
	private static final long serialVersionUID = -8607607402685333888L;

	/**
	 * GameMap to be rendered
	 */
	private GameMap loadedMap;

	/**
	 * Graphics object
	 */
	private Graphics g;

	/**
	 * MapPanel constructor
	 */
	public MapPanel() {
		setBorder(BorderFactory.createLineBorder(Color.black));
	}
		
	/**
	 * Start MapCell
	 */
	private MapCell StartCell = new StartCell(MapCell.Cells.START.asChar());
	/**
	 * Wall MapCell
	 */
	private MapCell WallCell = new WallCell(MapCell.Cells.WALL.asChar());
	/**
	 * Hole MapCell
	 */
	private MapCell HoleCell = new HoleCell(MapCell.Cells.HOLE.asChar());
	/**
	 * Floor MapCell
	 */
	private MapCell FloorCell = new FloorCell(MapCell.Cells.FLOOR.asChar());
	/**
	 * FloorVisited MapCell
	 */
	private MapCell FloorVisitedCell = new FloorVisitedCell(MapCell.Cells.FLOORVISITED.asChar());
	/**
	 * Teletransport MapCell
	 */
	private MapCell TeletransportCell = new TeletransportCell(MapCell.Cells.TELETRANSPORT.asChar());
	/**
	 * Gold MapCell
	 */
	private MapCell GoldCell = new GoldCell(MapCell.Cells.GOLD.asChar());
	/**
	 * Enemy20 MapCell
	 */
	private MapCell Enemy20Cell = new Enemy20Cell(MapCell.Cells.ENEMY20.asChar());
	/**
	 * Enemy50 MapCell
	 */
	private MapCell Enemy50Cell = new Enemy50Cell(MapCell.Cells.ENEMY50.asChar());
	
	/**
	 * Draws map on screen
	 * @return true
	 */
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
				MapCell.Cells et = loadedMap.getValue(i, j);
				MapCell cell = getTile(et);
				cell.render(g, x, y, (int) rectWidth, (int) rectHeight);
			}
		}
		
		return true;
	}

	/**
	 * Loads GameMap on screen
	 * @param map GameMap representing map to be drawn on screen
	 */
	public void loadMap(GameMap map) {
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
		if (value == MapCell.Cells.START)
			return StartCell;
		if (value == MapCell.Cells.WALL)
			return WallCell;
		if (value == MapCell.Cells.HOLE)
			return HoleCell;
		if (value == MapCell.Cells.FLOOR)
			return FloorCell;
		if (value == MapCell.Cells.FLOORVISITED)
			return FloorVisitedCell;
		if (value == MapCell.Cells.TELETRANSPORT)
			return TeletransportCell;
		if (value == MapCell.Cells.GOLD)
			return GoldCell;
		if (value == MapCell.Cells.ENEMY20)
			return Enemy20Cell;
		if (value == MapCell.Cells.ENEMY50)
			return Enemy50Cell;

		return null;
	}
}
