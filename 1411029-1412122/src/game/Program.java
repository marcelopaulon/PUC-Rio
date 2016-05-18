package game;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JWindow;
import javax.swing.SwingConstants;

import boardInfo.Board;
import gfx.DiceAssets;

public class Program {

	private JFrame window;
	
	private GameControl gameControl;
	
	private static Dimension defaultDimension = new Dimension(527, 582);

	private void createMainMenu(Board board)
	{
		MainMenu mainMenu = new MainMenu(gameControl);
		window.add(mainMenu, BorderLayout.PAGE_START);
	}
	
	private void createGamePanel(Board board)
	{
		GamePanel gamePanel = new GamePanel(board);
		window.add(gamePanel, BorderLayout.CENTER);
	}
	
	private void createGameInfoPanel(Board board)
	{
		GameInfoPanel gameInfoPanel = new GameInfoPanel(board);
		window.add(gameInfoPanel, BorderLayout.EAST);
		gameInfoPanel.setVisible(true);
	}
	
	private void showSplashScreen()
	{
		BufferedImage image = null;
		
		try {
			image = ImageIO.read(new File("res/splash.png"));
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		JPanel panel = new JPanel();
		
		JLabel label = new JLabel(new ImageIcon(image));
		
		URL url = Program.class.getResource("/gfx/playsm.gif");
		ImageIcon imageIcon = new ImageIcon(url);
		JLabel playLabel = new JLabel(imageIcon);
		
		panel.add(label);
		
		JWindow splash = new JWindow();
		
		splash.setSize(600, 600);
		
		splash.setContentPane(label);
		
		JPanel glassPane = (JPanel) splash.getGlassPane();
		glassPane.setLayout(new BorderLayout());
		glassPane.add(playLabel, BorderLayout.PAGE_END);
		splash.setGlassPane(glassPane);
		glassPane.setVisible(true);
		splash.pack();
		splash.setLocationRelativeTo(null);
		
		splash.setVisible(true);
		
		try {
		    Thread.sleep(20000);
		} catch (InterruptedException e) {
		    e.printStackTrace();
		}
		splash.removeAll();
		splash.setVisible(false);
		splash.dispose();
	}
	
	public Program()
	{
		showSplashScreen();
		window = new JFrame("Super LUDO 2k16.1");
		
		Board board = new Board();
		
		gameControl = new GameControl(board);
		
		createMainMenu(board);
		createGamePanel(board);
		createGameInfoPanel(board);
		
		gameControl.startGame();
		
		window.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		window.setMinimumSize(defaultDimension);
		window.pack();
		window.setSize(defaultDimension);
		window.setVisible(true);
	}
	
	public static void main(String[] arndt)
	{
		DiceAssets.init();
		new Program();
	}
}
