package game;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.geom.Rectangle2D;

import javax.swing.JPanel;

import boardInfo.Board;
import playerInfo.PlayerColor;
import rendering.LaneView;
import rendering.PocketView;
import rendering.TrackView;
import rendering.YardView;

public class GamePanel extends JPanel {

	// Game Board
	private Board board;
	
	private YardView yardView;
	private PocketView pocketView;
	private LaneView laneView;
	private TrackView trackView;

	public GamePanel()
	{
		super();
		
	    setBackground(Color.white);
	    setForeground(Color.white);

	    // Create the game board
	 	board = new Board();
	 		
	    // Create the game views
	    yardView = new YardView(board);
	    pocketView = new PocketView();
	    laneView = new LaneView();
	    trackView = new TrackView();
	}
	
	private void renderBoard(Graphics2D g2d)
	{
		yardView.render(g2d);
		pocketView.render(g2d);
		laneView.render(g2d);
		trackView.render(g2d);
	}
		
	@Override
	public void paintComponent(Graphics g) {
		super.paintComponent(g);
		Graphics2D g2d = (Graphics2D)g;
		
	    g2d.setRenderingHint(RenderingHints.KEY_ANTIALIASING,
	            RenderingHints.VALUE_ANTIALIAS_ON);

		renderBoard(g2d);
	}
}
