package game;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;

import javax.swing.JPanel;

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

	public GamePanel(Board board)
	{
		super();
		
		instance = this;
		
	    setBackground(Color.white);
	    setForeground(Color.white);
	 		 	
	    this.board = board;
	    
	    resetViews();
	    
	    this.addMouseListener(new BoardMouseListener());
	}
	
	public static GamePanel getInstance(){
		return instance;
	}
	
	public static PlayerColor getCurrentPlayer()
	{
		return instance.board.getCurrentPlayer();
	}
	
	public void setBoard(Board board){
		this.board = board;
	}
	
	private void resetViews()
	{
		// Create the game views
	    yardView = new YardView(board);
	    pocketView = new PocketView(board);
	    laneView = new LaneView(board.getLane(PlayerColor.GREEN), board.getLane(PlayerColor.YELLOW), board.getLane(PlayerColor.BLUE), board.getLane(PlayerColor.RED));
	    trackView = new TrackView(board.getTrack());
	}
	
	public static void resetHighlights()
	{
		instance.trackView.clearSquareHighlight();
		YardView.setYardHighlight(null);
		instance.laneView.clearSquareHighlight(PlayerColor.GREEN);
		instance.laneView.clearSquareHighlight(PlayerColor.BLUE);
		instance.laneView.clearSquareHighlight(PlayerColor.YELLOW);
		instance.laneView.clearSquareHighlight(PlayerColor.RED);
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
	
	public static void requestViewReset()
	{
		if(instance != null)
		{
			instance.resetViews();
			instance.repaint();
		}
	}
}
