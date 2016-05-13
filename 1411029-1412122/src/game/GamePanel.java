package game;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;

import javax.swing.JPanel;

import action.ActionManager;
import boardInfo.Board;
import playerInfo.PlayerColor;
import rendering.LaneView;
import rendering.PocketView;
import rendering.TrackView;
import rendering.YardView;

public class GamePanel extends JPanel {

	private static GamePanel instance = null;
	
	// Game Board
	private Board board;
	
	private YardView yardView;
	private PocketView pocketView;
	private LaneView laneView;
	private TrackView trackView;

	public GamePanel()
	{
		super();
		
		instance = this;
		
	    setBackground(Color.white);
	    setForeground(Color.white);

	    // Create the game board
	 	board = new Board();
	 		 		
	    // Create the game views
	    yardView = new YardView(board);
	    yardView.setYardDice(board.getCurrentPlayer());
	    pocketView = new PocketView();
	    laneView = new LaneView(board.getLane(PlayerColor.GREEN), board.getLane(PlayerColor.YELLOW), board.getLane(PlayerColor.BLUE), board.getLane(PlayerColor.RED));
	    trackView = new TrackView(board.getTrack());
	    
	    this.addMouseListener(new BoardMouseListener());
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
	
	public static void requestRedraw()
	{
		if(instance != null)
		{
			instance.repaint();
		}
	}
}
