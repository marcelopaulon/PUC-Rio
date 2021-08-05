package program;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Hashtable;
import java.util.List;

import javax.swing.JButton;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.filechooser.FileNameExtensionFilter;

import map.GameMap;
import map.MapLoader;
import map.MapLoaderException;
import pathfinding.WarPlaneInfo;

/**
 * Top panel containing buttons like "Carregar Mapa" and "Bases Inimigas"
 *
 */
public class ToolsPanel extends JPanel
{
	/**
	 * Class serialization version identifier
	 * @see <a href=http://blog.caelum.com.br/entendendo-o-serialversionuid/>Entendendo o serialVersionUID</a>
	 */
	private static final long serialVersionUID = 1127862851219036026L;

	private EditEnemyBaseInfo enemyBaseInfoDialog = new EditEnemyBaseInfo();
	
	private EditWarPlaneInfo warPlaneInfoDialog = new EditWarPlaneInfo();
	
	/**
	 * ToolsPanel constructor
	 * <p><b>ToolsPanel:</b> Top panel containing buttons like "Carregar Mapa" and "Bases Inimigas"</p>
	 */
	public ToolsPanel()
	{
		super();
		JButton loadMapButton = new JButton("Carregar Mapa");
		JButton editWarPlanesButton = new JButton("Aviões");
		JButton editEnemyBasesButton = new JButton("Bases Inimigas");
		JButton exitButton = new JButton("Sair");

		loadMapButton.addActionListener(loadMapListener);
		editWarPlanesButton.addActionListener(editWarPlanesListener);
		editEnemyBasesButton.addActionListener(editEnemyBasesListener);
		exitButton.addActionListener(exitListener);
		
		this.add(loadMapButton);
		this.add(editWarPlanesButton);
		this.add(editEnemyBasesButton);
		this.add(exitButton);
	}
	
	/**
	 * Gets planes' info table
	 * @return List containing planes' name and firepower
	 * @see EditWarPlaneInfo#getWarPlaneList() getWarPlaneList in EditWarPlaneInfo
	 */
	public List<WarPlaneInfo> getWarPlaneList()
	{
		return warPlaneInfoDialog.getWarPlaneList();
	}
	
	/**
	 * Gets enemy bases' info table
	 * @return Hashtable containing each base's ID and difficulty level
	 * @see EditEnemyBaseInfo#getEnemyBaseList() getEnemyBaseList in EditEnemyBaseInfo
	 */
	public Hashtable<Integer, Integer> getEnemyBaseList()
	{
		return enemyBaseInfoDialog.getEnemyBaseList();
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
	 * Defines what happens when the "Bases Inimigas" button is presssed
	 */	
	private ActionListener editEnemyBasesListener = new ActionListener()
	{
		@Override
		public void actionPerformed(ActionEvent e)
		{
			if(enemyBaseInfoDialog == null)
			{
				enemyBaseInfoDialog = new EditEnemyBaseInfo();
			}
			
			enemyBaseInfoDialog.setLocationRelativeTo(ToolsPanel.this);
			enemyBaseInfoDialog.setVisible(true);
		}
	};

	/**
	 * Defines what happens when the "Aviões" button is presssed
	 */
	private ActionListener editWarPlanesListener = new ActionListener()
	{
		@Override
		public void actionPerformed(ActionEvent e)
		{
			if(warPlaneInfoDialog == null)
			{
				warPlaneInfoDialog = new EditWarPlaneInfo();
			}
			
			warPlaneInfoDialog.setLocationRelativeTo(ToolsPanel.this);
			warPlaneInfoDialog.setVisible(true);
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
