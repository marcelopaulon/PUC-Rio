package game;

import java.awt.BorderLayout;
import java.awt.Dimension;

import javax.swing.JFrame;

import boardInfo.Board;
import gfx.DiceAssets;
import notifications.Notifications;

public class Program
{
	private static JFrame window;

	private GameControl gameControl;

	private static Dimension defaultDimension = new Dimension(527, 586);

	private MainMenu createMainMenu(Board board)
	{
		MainMenu mainMenu = new MainMenu(gameControl);
		window.add(mainMenu, BorderLayout.PAGE_START);
		return mainMenu;
	}

	private GamePanel createGamePanel(Board board)
	{
		GamePanel gamePanel = new GamePanel(board);
		window.add(gamePanel, BorderLayout.CENTER);
		return gamePanel;
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
		
		gameControl = new GameControl(board, createGamePanel(board), Notifications.getInstance(window, board));
		
		createMainMenu(board);
		
		window.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		window.setMinimumSize(defaultDimension);
		window.pack();
		window.setLocationRelativeTo(null);
		window.setSize(defaultDimension);
		window.setVisible(true);
		
		Notifications.getInstance().notifyGameStart();
		gameControl.startGame();
	}
	
	public static JFrame getWindow()
	{
		return window;
	}

	public static void main(String[] arndt)
	{
		DiceAssets.init();
		new Program();
	}
}
