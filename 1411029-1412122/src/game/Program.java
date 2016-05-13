package game;

import java.awt.BorderLayout;
import java.awt.Dimension;

import javax.swing.JFrame;

public class Program {

	private JFrame window;
	
	private static Dimension defaultDimension = new Dimension(800, 600);

	private void createMainMenu()
	{
		MainMenu mainMenu = new MainMenu();
		window.add(mainMenu, BorderLayout.PAGE_START);
	}
	
	private void createGamePanel()
	{
		GamePanel gamePanel = new GamePanel();
		window.add(gamePanel, BorderLayout.CENTER);
	}
	
	private void createGameInfoPanel()
	{
		GameInfoPanel gameInfoPanel = new GameInfoPanel();
		window.add(gameInfoPanel, BorderLayout.EAST);
		gameInfoPanel.setVisible(true);
	}
	
	public Program()
	{
		window = new JFrame("Super LUDO 2k16.1");
		
		createMainMenu();
		createGamePanel();
		createGameInfoPanel();
		
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
