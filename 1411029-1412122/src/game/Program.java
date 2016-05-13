package game;

import java.awt.BorderLayout;
import java.awt.Dimension;

import javax.swing.JFrame;

import boardInfo.Board;

public class Program {

	private JFrame window;
	
	private static Dimension defaultDimension = new Dimension(800, 600);

	private void createMainMenu(Board board)
	{
		MainMenu mainMenu = new MainMenu(board);
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
	
	public Program()
	{
		window = new JFrame("Super LUDO 2k16.1");
		
		Board board = new Board();
		
		createMainMenu(board);
		createGamePanel(board);
		createGameInfoPanel(board);
		
		window.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		window.setMinimumSize(defaultDimension);
		window.pack();
		window.setSize(defaultDimension);
		window.setVisible(true);
	}
	
	public static void main(String[] arndt)
	{
		new Program();
	}
}
