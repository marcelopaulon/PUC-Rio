package program;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.filechooser.FileNameExtensionFilter;

import map.GameMap;
import map.MapLoader;
import map.MapLoaderException;

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
	
	/**
	 * ToolsPanel constructor
	 * <p><b>ToolsPanel:</b> Top panel containing buttons like "Carregar Mapa" and "Gerar Mapa"</p>
	 */
	public ToolsPanel()
	{
		super();
		JButton loadMapButton = new JButton("Carregar Mapa");
		JButton randomMapGenButton = new JButton("Gerar mapa");
		JButton exitButton = new JButton("Sair");

		loadMapButton.addActionListener(loadMapListener);
		randomMapGenButton.addActionListener(randomMapGenListener);
		exitButton.addActionListener(exitListener);
		
		this.add(loadMapButton);
		this.add(randomMapGenButton);
		this.add(exitButton);
	}
	
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
				Program.getInstance().tryLoadMap(map);
			} catch (MapLoaderException exception)
			{
				JOptionPane.showMessageDialog(ToolsPanel.this, "Erro ao carregar o mapa.", "Erro",
						JOptionPane.WARNING_MESSAGE);
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
			try{
				GameMap map = showLoadMapDialog(); // TODO
				Program.getInstance().tryLoadMap(map);
			} catch (MapLoaderException exception)
			{
				JOptionPane.showMessageDialog(ToolsPanel.this, "Erro ao gerar o mapa.", "Erro",
						JOptionPane.WARNING_MESSAGE);
			}
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
