package game;

import java.awt.BorderLayout;
import java.awt.Dimension;

import javax.swing.JFrame;

import boardInfo.Board;
import gfx.DiceAssets;
import rules.GameControl;

public class Program
{

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

	private void showSplashScreen()
	{
		new SplashScreen();
	}

	public Program()
	{
		showSplashScreen();
		window = new JFrame("Super LUDO 2k16.1");

		Board board = new Board();

		gameControl = new GameControl(board);

		createMainMenu(board);
		createGamePanel(board);

		gameControl.startGame();

		window.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		window.setMinimumSize(defaultDimension);
		window.pack();
		window.setLocationRelativeTo(null);
		window.setSize(defaultDimension);
		window.setVisible(true);
	}

	public static void main(String[] arndt)
	{
		DiceAssets.init();
		new Program();
	}
}
