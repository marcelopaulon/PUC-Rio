package program;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.io.File;
import java.util.Hashtable;
import java.util.List;

import javax.swing.JFrame;
import javax.swing.JOptionPane;

import gfx.Assets;
import map.GameMap;
import map.MapLoader;
import map.MapLoaderException;
import map.MapPanel;
import pathfinding.WarPlaneInfo;

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
	public static File defaultSaveFile = new File("defaultMap.mapsave");
	private static Dimension defaultDimension = new Dimension(800, 800);

	/**
	 * Top panel
	 */
	public static ToolsPanel toolsPanel;
	
	private GameMap map;
	private MapPanel mapPanel;
	private ToolsSidebar toolsSidebar;
	private PlanesPanel planesPanel;
	
	private JFrame window;
	
	private static Program instance;
	
	/**
	 * Creates top panel
	 */
	private void createToolsPanel()
	{
		toolsPanel = new ToolsPanel();
		window.add(toolsPanel, BorderLayout.PAGE_START);
	}
	
	/**
	 * Creates panel where the map is displayed, already loading it
	 */
	private void createPlanesPanel(){
		planesPanel = new PlanesPanel();
		window.add(planesPanel, BorderLayout.PAGE_END);
	}
	
	/**
	 * Creates panel where the map is displayed, already loading it
	 */
	private void createMapPanel()
	{
		mapPanel = new MapPanel();
		mapPanel.setSize(defaultDimension);
		
		toolsSidebar = new ToolsSidebar(map, mapPanel, planesPanel);
		
		window.add(mapPanel, BorderLayout.CENTER);
		window.add(toolsSidebar, BorderLayout.EAST);
		
		try {
			map = MapLoader.tryLoadMap(Program.defaultSaveFile);
			tryRenderMap();
		} catch (MapLoaderException e) {
			JOptionPane.showMessageDialog(Program.toolsPanel, "Erro ao carregar o mapa padrão.", "Erro",
					JOptionPane.WARNING_MESSAGE);
		}
	}
	
	
	/**
	 * Prints cost on sidebar
	 * @param score Custo a ser printado
	 */
	public void setCost(double score)
	{
		toolsSidebar.setCost(score);
	}
	
	/**
	 * Refreshes planes' energy values through new get requisitions.
	 * @see toolsPanel#refreshWarPlanesEnergy() refreshWarPlanesEnergy in ToolsSidebar
	 */
	public void refreshWarPlanesEnergy(List<WarPlaneInfo> info)
	{
		toolsSidebar.refreshWarPlanesEnergy(info);
	}
	
	/**
	 * Loads and renders a map
	 * @param map to be load and rendered
	 */
	public void tryLoadMap(GameMap map)
	{
		this.map = map;
		tryRenderMap();
	}
	
	/**
	 * Renders map and loads it in mapPanel.
	 */
	private void tryRenderMap()
	{
		if(map != null)
		{
			toolsSidebar.setMap(map);
			mapPanel.loadMap(map);
			toolsSidebar.reset();
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
	
	public PlanesPanel getPlanesPanel(){
		return planesPanel;
	}
	
	/**
	 * Gets plane info list
	 * @return list containing each ship's name and firepower
	 * @see ToolsPanel#getWarPlaneList() getWarPlaneList in ToolsPanel
	 * @see EditWarPlaneInfo#getWarPlaneList() getWarPlaneList in EditWarPlaneInfo
	 */
	public List<WarPlaneInfo> getWarPlaneList()
	{
		return toolsPanel.getWarPlaneList();
	}
	
	/**
	 * Get enemy base info list
	 * @return Hashtable containing each enemy base's ID and difficulty level
	 * @see ToolsPanel#getEnemyBaseList() getEnemyBaseList in ToolsPanel
	 * @see EditEnemyBaseInfo#getEnemyBaseList() getEnemyBaseList in EditEnemyBaseInfo
	 */
	public Hashtable<Integer, Integer> getEnemyBaseList()
	{
		return toolsPanel.getEnemyBaseList();
	}

	/**
	 * Program initializer function. Called on main.
	 */
	public void appStart()
	{
		window = new JFrame("INF1771 - T1");

		Assets.init();

		createToolsPanel();
		createPlanesPanel();
		createMapPanel();

		window.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		window.setMinimumSize(defaultDimension);
		window.pack();
		window.setSize(defaultDimension);
		window.setVisible(true);
	}
}
