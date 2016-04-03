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
 * Classe principal, contém a função main. 
 * Representa uma instância do programa.
 *
 */
public final class Program
{
	/**
	 * Guarda o arquivo padrão de mapa
	 */
	public static File defaultSaveFile = new File("defaultMap.mapsave");
	private static Dimension defaultDimension = new Dimension(800, 800);

	/**
	 * Painel de cima
	 */
	public static ToolsPanel toolsPanel;
	
	private GameMap map;
	private MapPanel mapPanel;
	private ToolsSidebar toolsSidebar;
	private PlanesPanel planesPanel;
	
	private JFrame window;
	
	private static Program instance;
	
	/**
	 * Cria o painel de cima
	 */
	private void createToolsPanel()
	{
		toolsPanel = new ToolsPanel();
		window.add(toolsPanel, BorderLayout.PAGE_START);
	}
	
	/**
	 * Cria o painel onde o mapa é exibido, já carregando ele
	 */
	private void createPlanesPanel(){
		planesPanel = new PlanesPanel();
		window.add(planesPanel, BorderLayout.PAGE_END);
	}
	
	/**
	 * Cria o painel onde o mapa é exibido, já carregando ele
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
	 * Printa o custo na sidebar lateral
	 * @param score Custo a ser printado
	 */
	public void setCost(double score)
	{
		toolsSidebar.setCost(score);
	}
	
	/**
	 * Atualiza os valores de energia das naves através de novas requisições get aos mesmos.
	 * @see toolsPanel#refreshWarPlanesEnergy() refreshWarPlanesEnergy em ToolsSidebar
	 */
	public void refreshWarPlanesEnergy(List<WarPlaneInfo> info)
	{
		toolsSidebar.refreshWarPlanesEnergy(info);
	}
	
	/**
	 * Carrega um mapa e o renderiza
	 * @param map Mapa que será carregado e renderizado
	 */
	public void tryLoadMap(GameMap map)
	{
		this.map = map;
		tryRenderMap();
	}
	
	/**
	 * Renderiza o mapa e o carrega no mapPanel.
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
	 * Função principal do programa.
	 * @param args
	 */
	public static void main(String[] args)
	{
		instance = new Program();
		instance.appStart();
	}
	
	/**
	 * Pega a instância do programa
	 * @return Instância
	 */
	public static Program getInstance()
	{
		return instance;
	}
	
	/**
	 * Pega a lista de informações das naves
	 * @return Lista contendo nome e poder de fogo das naves
	 * @see ToolsPanel#getWarPlaneList() getWarPlaneList em ToolsPanel
	 * @see EditWarPlaneInfo#getWarPlaneList() getWarPlaneList em EditWarPlaneInfo
	 */
	public List<WarPlaneInfo> getWarPlaneList()
	{
		return toolsPanel.getWarPlaneList();
	}
	
	/**
	 * Pega a lista de informações das bases inimigas
	 * @return Hashtable contendo id e dificuldade de cada base inimiga
	 * @see ToolsPanel#getEnemyBaseList() getEnemyBaseList em ToolsPanel
	 * @see EditEnemyBaseInfo#getEnemyBaseList() getEnemyBaseList em EditEnemyBaseInfo
	 */
	public Hashtable<Integer, Integer> getEnemyBaseList()
	{
		return toolsPanel.getEnemyBaseList();
	}

	/**
	 * Função que inicializa o programa. Chamada na main.
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
