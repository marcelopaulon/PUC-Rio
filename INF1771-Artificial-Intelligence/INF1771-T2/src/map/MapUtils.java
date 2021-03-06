package map;

import mapcell.Enemy20Cell;
import mapcell.Enemy50Cell;
import mapcell.FloorCell;
import mapcell.FloorVisitedCell;
import mapcell.GoldCell;
import mapcell.HoleCell;
import mapcell.PowerUpCell;
import mapcell.PowerUpVisitedCell;
import mapcell.MapCell;
import mapcell.StartCell;
import mapcell.TeletransportCell;
import mapcell.WallCell;
import mapcell.MightHaveHoleCell;
import mapcell.MightHaveEnemyCell;
import mapcell.MightHaveTeletransportCell;

public class MapUtils 
{
	/**
	 * Start MapCell
	 */
	private static MapCell StartCell = new StartCell(MapCell.Cells.START.asChar());
	/**
	 * Wall MapCell
	 */
	private static MapCell WallCell = new WallCell(MapCell.Cells.WALL.asChar());
	/**
	 * Hole MapCell
	 */
	private static MapCell HoleCell = new HoleCell(MapCell.Cells.HOLE.asChar());
	/**
	 * PowerUp MapCell
	 */
	private static MapCell PowerUpCell = new PowerUpCell(MapCell.Cells.POWERUP.asChar());
	/**
	 * PowerUp MapCell
	 */
	public static MapCell PowerUpVisitedCell = new PowerUpVisitedCell(MapCell.Cells.POWERUP.asChar());
	/**
	 * Floor MapCell
	 */
	private static MapCell FloorCell = new FloorCell(MapCell.Cells.FLOOR.asChar());
	/**
	 * FloorVisited MapCell
	 */
	private static MapCell FloorVisitedCell = new FloorVisitedCell(MapCell.Cells.FLOORVISITED.asChar());
	/**
	 * Teletransport MapCell
	 */
	private static MapCell TeletransportCell = new TeletransportCell(MapCell.Cells.TELETRANSPORT.asChar());
	/**
	 * Gold MapCell
	 */
	private static MapCell GoldCell = new GoldCell(MapCell.Cells.GOLD.asChar());
	/**
	 * Enemy20 MapCell
	 */
	private static MapCell Enemy20Cell = new Enemy20Cell(MapCell.Cells.ENEMY20.asChar());
	/**
	 * Enemy50 MapCell
	 */
	private static MapCell Enemy50Cell = new Enemy50Cell(MapCell.Cells.ENEMY50.asChar());
	/**
	 * MightHaveHoleCell MapCell
	 */
	public static MapCell MightHaveHoleCell = new MightHaveHoleCell('\0');
	/**
	 * MightHaveEnemyCell MapCell
	 */
	public static MapCell MightHaveEnemyCell = new MightHaveEnemyCell('\0');
	/**
	 * MightHaveTeletransportCell MapCell
	 */
	public static MapCell MightHaveTeletransportCell = new MightHaveTeletransportCell('\0');
	
	public static MapCell getTile(MapCell.Cells value) {
		if (value == MapCell.Cells.START)
			return StartCell;
		if (value == MapCell.Cells.WALL)
			return WallCell;
		if (value == MapCell.Cells.HOLE)
			return HoleCell;
		if (value == MapCell.Cells.POWERUP)
			return PowerUpCell;
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
