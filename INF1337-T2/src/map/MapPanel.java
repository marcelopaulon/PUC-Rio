package map;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.BorderFactory;
import javax.swing.JPanel;
import javax.swing.Timer;

import gfx.Assets;
import logic.Action;
import logic.CaptureGold;
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

	private int _timeSlice = 50;  // update every 50 milliseconds
	
	private Timer _timer = new Timer(_timeSlice, new ActionListener() {
	    /**
	     * The timer "ticks" by calling this method every _timeslice milliseconds
	     */
	    public void actionPerformed (ActionEvent e) {
	        MapPanel.this.repaint();
	    }
	});
	
	private long lastActionTime;
	
	private Action curAction;
	
	private int curAgentX, curAgentY;
	
	private char curAgentOrientation; // U -> Up D -> Down L -> Left R -> Right
	
	private AgentCell agentCell = new AgentCell('A');
	
	private CaptureGold captureGold;
	
	/**
	 * MapPanel constructor
	 */
	public MapPanel() {
		setBorder(BorderFactory.createLineBorder(Color.black));
		
		captureGold = new CaptureGold();
	}
	
	/**
	 * Draws map on screen
	 * @return true
	 */
	public boolean renderMap() {
		int width = getWidth();
		int height = getHeight();

		int numcols = loadedMap.getNColumns(), numrows = loadedMap.getNRows();

		_timer.stop();
		
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
				MapCell cell = MapUtils.getTile(et);
				cell.render(g, x, y, (int) rectWidth, (int) rectHeight);
			}
		}
		
		int y = (int) ((curAgentY) * rectHeight);
		int x = (int) ((curAgentX) * rectWidth);
		agentCell.render(g, x, y, (int) rectWidth, (int) rectHeight);
		
		_timer.start();
				
		return true;
	}

	/**
	 * Loads GameMap on screen
	 * @param map GameMap representing map to be drawn on screen
	 */
	public void loadMap(GameMap map) {
		loadedMap = map;
		
		try {
			captureGold.resetGame(loadedMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		lastActionTime = System.currentTimeMillis();
		
		curAgentX = 1;
		curAgentY = 1;
		curAgentOrientation = 'D';
		agentCell.setOrientation(curAgentOrientation);
		
		this.repaint();
	}
	
	private void handleAction(Action action)
	{
		if(action == Action.ROTATE)
		{
			if(curAgentOrientation == 'U') curAgentOrientation = 'R';
			else if(curAgentOrientation == 'R') curAgentOrientation = 'D';
			else if(curAgentOrientation == 'D') curAgentOrientation = 'L';
			else if(curAgentOrientation == 'L') curAgentOrientation = 'U';
			agentCell.setOrientation(curAgentOrientation);
		}
		if(action == Action.ROTATELEFT)
		{
			if(curAgentOrientation == 'U') curAgentOrientation = 'L';
			else if(curAgentOrientation == 'L') curAgentOrientation = 'D';
			else if(curAgentOrientation == 'D') curAgentOrientation = 'R';
			else if(curAgentOrientation == 'R') curAgentOrientation = 'U';
			agentCell.setOrientation(curAgentOrientation);
		}
		else if(action == Action.WALK)
		{
			if(curAgentOrientation == 'U') curAgentY--;
			else if(curAgentOrientation == 'R') curAgentX++;
			else if(curAgentOrientation == 'D') curAgentY++;
			else if(curAgentOrientation == 'L') curAgentX--;
		}
		
		loadedMap.visit(curAgentX, curAgentY);
	}

	@Override
	public void paintComponent(Graphics g) {
		super.paintComponent(g);
		this.g = g;
		
		if(loadedMap != null)
		{
			renderMap();
			
			if(System.currentTimeMillis() - lastActionTime > 100)
			{
				handleAction(captureGold.getNextMove());
				lastActionTime = System.currentTimeMillis();
			}
		}
	}
}
