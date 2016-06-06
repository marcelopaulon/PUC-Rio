package game;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;

import javax.swing.JPanel;

import boardInfo.Board;
import game.common.IViewManager;
import playerInfo.PlayerColor;
import rendering.LaneView;
import rendering.PocketView;
import rendering.TrackView;
import rendering.YardView;
import rendering.common.View;

public class GamePanel extends JPanel implements IViewManager
{

	/**
	 * 
	 */
	private static final long serialVersionUID = -283067601327612170L;

	private static GamePanel instance = null;

	// Game Board
	private Board board;

	private View yardView;
	private View pocketView;
	private View laneView;
	private View trackView;

	public GamePanel(Board board)
	{
		super();

		instance = this;

		setBackground(Color.white);
		setForeground(Color.white);

		this.board = board;

		resetViews();

		this.addMouseListener(new BoardMouseListener(Notifications.getInstance()));
	}

	public static GamePanel getInstance()
	{
		return instance;
	}

	public static PlayerColor getCurrentPlayer()
	{
		return instance.board.getCurrentPlayer();
	}

	private void resetViews()
	{
		// Create the game views
		yardView = new YardView(board);
		pocketView = new PocketView(board);
		laneView = new LaneView(board.getLane(PlayerColor.GREEN), board.getLane(PlayerColor.YELLOW),
				board.getLane(PlayerColor.BLUE), board.getLane(PlayerColor.RED));
		trackView = new TrackView(board.getTrack());
	}

	@Override
	public void resetHighlights()
	{
		((TrackView) instance.trackView).clearSquareHighlight();
		YardView.setYardHighlight(null);
		((LaneView) instance.laneView).clearSquareHighlight(PlayerColor.GREEN);
		((LaneView) instance.laneView).clearSquareHighlight(PlayerColor.BLUE);
		((LaneView) instance.laneView).clearSquareHighlight(PlayerColor.YELLOW);
		((LaneView) instance.laneView).clearSquareHighlight(PlayerColor.RED);
	}

	private void renderBoard(Graphics2D g2d)
	{
		yardView.render(g2d);
		pocketView.render(g2d);
		laneView.render(g2d);
		trackView.render(g2d);
	}

	@Override
	public void paintComponent(Graphics g)
	{
		super.paintComponent(g);
		Graphics2D g2d = (Graphics2D) g;

		g2d.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);

		renderBoard(g2d);
	}

	@Override
	public void refresh() {
		try {
			if (instance != null)
			{
				instance.repaint();
			}
			else
			{
				throw new Exception("Erro ao renderizar mapa");
			}
		} catch (Exception e) {
			Notifications.getInstance().notifyError(e.getMessage());
		}
	}
	
	@Override
	public void resetBoard(Board savedMap) {
		this.board = savedMap;
		instance.resetViews();
		this.refresh();
	}
}
