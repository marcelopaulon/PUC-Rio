package program;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.io.File;

import javax.swing.JFrame;
import javax.swing.JOptionPane;

import gfx.Assets;
import map.GameMap;
import map.MapLoader;
import map.MapLoaderException;
import map.MapPanel;

/**
 * Main class, contains main function
 * Represents an instance of the program
 *
 */
public final class Program
{
	/**
	 * Stores map pattern file
	 */
	public static File defaultSaveFile = new File("saves/defaultMap.mapsave");
	private static Dimension defaultDimension = new Dimension(800, 900);

	/**
	 * Top panel
	 */
	public static ToolsPanel toolsPanel;
	
	private MapPanel mapPanel;
	
	private GameMap savedMap;
	
	private JFrame window;
	
	private static Program instance;
	
	/**
	 * Creates top panel
	 */
	private void createToolsPanel()
	{
		toolsPanel = new ToolsPanel(window, mapPanel, savedMap);
		window.add(toolsPanel, BorderLayout.PAGE_START);
	}
		
	/**
	 * Creates panel where the map is displayed, already loading it
	 */
	private void createMapPanel()
	{
		mapPanel = new MapPanel();
		mapPanel.setSize(defaultDimension);
		
		window.add(mapPanel, BorderLayout.CENTER);
		
		try {
			savedMap = MapLoader.tryLoadMap(Program.defaultSaveFile);
			mapPanel.loadMap(savedMap);
		} catch (MapLoaderException e) {
			JOptionPane.showMessageDialog(Program.toolsPanel, "Erro ao carregar o mapa padrão.", "Erro",
					JOptionPane.WARNING_MESSAGE);
		}
	}
	
	/**
	 * Program's main function.
	 * @param args
	 */
	public static void main(String[] args)
	{
		instance = new Program();
		instance.appStart();
	}
	
	/**
	 * Gets program's instance
	 * @return instance
	 */
	public static Program getInstance()
	{
		return instance;
	}
	
	/**
	 * Program initializer function. Called on main.
	 */
	public void appStart()
	{
		window = new JFrame("INF1771 - T2");

		Assets.init();

		createMapPanel();
		createToolsPanel();
		
		window.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		window.setMinimumSize(defaultDimension);
		window.pack();
		window.setSize(defaultDimension);
		window.setVisible(true);
	}
}