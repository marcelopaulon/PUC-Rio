package program;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.swing.JButton;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.filechooser.FileNameExtensionFilter;

import map.GameMap;
import map.MapGenerator;
import map.MapLoader;
import map.MapLoaderException;
import map.MapPanel;

/**
 * Top panel containing buttons like "Carregar Mapa" and "Gerar Mapa"
 *
 */
public class ToolsPanel extends JPanel
{
	/**
	 * Class serialization version identifier
	 * @see <a href=http://blog.caelum.com.br/entendendo-o-serialversionuid/>Entendendo o serialVersionUID</a>
	 */
	private static final long serialVersionUID = 1127862851219036026L;
	
	/* MapPanel where the map is rendered */
	private MapPanel mapPanel;
	
	/* Saved map */
	private GameMap savedMap;
		
	/**
	 * ToolsPanel constructor
	 * <p><b>ToolsPanel:</b> Top panel containing buttons like "Carregar Mapa" and "Gerar Mapa"</p>
	 */
	public ToolsPanel(JFrame window, MapPanel mapPanel, GameMap map)
	{
		super();
		
		this.mapPanel = mapPanel;
		this.savedMap = map;
		
		JButton restartSearchButton = new JButton("Reiniciar Jogo");
		JButton optionsButton = new JButton("Opções");
		JButton editMapButton = new JButton("Editar Mapa");
		JButton loadMapButton = new JButton("Carregar Mapa");
		JButton saveMapButton = new JButton("Salvar Mapa");
		JButton randomMapGenButton = new JButton("Gerar Mapa");
		JButton exitButton = new JButton("Sair");

		restartSearchButton.addActionListener(restartSearchListener);
		loadMapButton.addActionListener(loadMapListener);
		saveMapButton.addActionListener(saveMapListener);
		randomMapGenButton.addActionListener(randomMapGenListener);
		exitButton.addActionListener(exitListener);
		
		OptionsDialog optionsDialog = new OptionsDialog(window, mapPanel);
		optionsButton.addActionListener(new ActionListener() {
	      public void actionPerformed(ActionEvent actionEvent) {
	    	  optionsDialog.setVisible(true);
	      }
        });
		
		this.add(restartSearchButton);
		this.add(optionsButton);
		this.add(editMapButton);
		this.add(loadMapButton);
		this.add(saveMapButton);
		this.add(randomMapGenButton);
		this.add(exitButton);
	}
	
	/**
	 * Defines what happens when the "Reiniciar Jogo" button is presssed
	 */
	private ActionListener restartSearchListener = new ActionListener()
	{
		@Override
		public void actionPerformed(ActionEvent e)
		{
			mapPanel.resetGame();
		}
	};
	
	/**
	 * Defines what happens when the "Carregar Mapa" button is presssed
	 */
	private ActionListener loadMapListener = new ActionListener()
	{
		@Override
		public void actionPerformed(ActionEvent e)
		{
			try{
				GameMap map = showLoadMapDialog();
				if(map != null)
				{
					savedMap = map;
					mapPanel.loadMap(savedMap);
				}
			} catch (MapLoaderException exception)
			{
				JOptionPane.showMessageDialog(ToolsPanel.this, "Erro ao carregar o mapa.", "Erro",
						JOptionPane.WARNING_MESSAGE);
			}
		}
	};
	
	/**
	 * Defines what happens when the "Salvar Mapa" button is presssed
	 */
	private ActionListener saveMapListener = new ActionListener()
	{
		@Override
		public void actionPerformed(ActionEvent e)
		{
			try
			{
				JFileChooser chooser = new JFileChooser();
				chooser.setCurrentDirectory(Program.defaultSaveFile);
				chooser.setFileFilter(new FileNameExtensionFilter(".mapsave", "mapsave"));
				int retorno = chooser.showSaveDialog(null);

				if (retorno == JFileChooser.APPROVE_OPTION)
				{
					char data[][] = savedMap.getRawData();
					File file = chooser.getSelectedFile();
					
					if (Utils.getFileExtension(file.getName()).equalsIgnoreCase("mapsave")) {
					    // filename is OK as-is
					} else {
					    file = new File(file.toString() + ".mapsave");  // append .mapsave
					    file = new File(file.getParentFile(), Utils.getFileBaseName(file.getName())+".mapsave");
					}
					
					try {
			            PrintWriter fileOut = new PrintWriter(file); //This also gives error

			            for (int i = 0; i < data.length; i++) {
							fileOut.write(data[i]);
							fileOut.write("\n");
						}
			            
			            fileOut.close();
			        } catch (IOException ex) {
			            ex.printStackTrace();
			        }
				}
				
			} catch (Exception ex) {
				ex.printStackTrace();
			}
		}
	};
	
	/**
	 * Defines what happens when the "Gerar mapa" button is presssed
	 */
	private ActionListener randomMapGenListener = new ActionListener()
	{
		@Override
		public void actionPerformed(ActionEvent e)
		{
			savedMap = MapGenerator.generateRandomMap();
			mapPanel.loadMap(savedMap);
		}
	};
	
	/**
	 * Defines what happens when the "Sair" button is presssed
	 */
	private ActionListener exitListener = new ActionListener()
	{
		@Override
		public void actionPerformed(ActionEvent e)
		{
			System.exit(0);
		}
	};
	
	/**
	 * Defines what dialog appears when a map is loaded
	 * @return Loaded map's GameMap or <b>null</b>
	 * @throws MapLoaderException
	 */
	public GameMap showLoadMapDialog() throws MapLoaderException
	{
		try
		{
			JFileChooser chooser = new JFileChooser();
			chooser.setCurrentDirectory(Program.defaultSaveFile);
			chooser.setFileFilter(new FileNameExtensionFilter("Apenas .mapsave", "mapsave"));
			int retorno = chooser.showOpenDialog(null);

			if (retorno == JFileChooser.APPROVE_OPTION)
			{
				return MapLoader.tryLoadMap(chooser.getSelectedFile());
			}
		} catch (Exception e)
		{
			e.printStackTrace();
			throw new MapLoaderException();
		}

		return null;
	}
}
