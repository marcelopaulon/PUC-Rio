package program;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.io.File;
import java.util.List;

import javax.swing.JFrame;
import javax.swing.JOptionPane;

import gfx.Assets;
import map.GameMap;
import map.MapLoader;
import map.MapLoaderException;
import map.MapPanel;
import program.WarPlaneTableModel.WarPlaneInfo;

public final class Program
{
	public static File defaultSaveFile = new File("defaultMap.mapsave");
	private static Dimension defaultDimension = new Dimension(800, 600);

	public static ToolsPanel toolsPanel;

	private GameMap map;
	private MapPanel mapPanel;
	private ToolsSidebar toolsSidebar;
	
	private JFrame window;
	
	private static Program instance;
	
	private void createToolsPanel()
	{
		toolsPanel = new ToolsPanel();
		window.add(toolsPanel, BorderLayout.PAGE_START);
	}
	
	private void createMapPanel()
	{
		mapPanel = new MapPanel();
		mapPanel.setSize(defaultDimension);
		
		toolsSidebar = new ToolsSidebar(map, mapPanel);
		
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
	
	public void setCost(double score)
	{
		toolsSidebar.setCost(score);
	}
	
	public void tryLoadMap(GameMap map)
	{
		this.map = map;
		tryRenderMap();
	}
	
	private void tryRenderMap()
	{
		if(map != null)
		{
			toolsSidebar.setMap(map);
			mapPanel.loadMap(map);
			toolsSidebar.reset();
		}
	}
	
	public static void main(String[] args)
	{
		instance = new Program();
		instance.appStart();
	}
	
	public static Program getInstance()
	{
		return instance;
	}
	
	public List<WarPlaneInfo> getWarPlaneList()
	{
		return toolsPanel.getWarPlaneList();
	}

	public void appStart()
	{
		window = new JFrame("INF1771 - T1");

		Assets.init();

		createToolsPanel();
		createMapPanel();

		window.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		window.setMinimumSize(defaultDimension);
		window.pack();
		window.setSize(defaultDimension);
		window.setVisible(true);
	}
}
