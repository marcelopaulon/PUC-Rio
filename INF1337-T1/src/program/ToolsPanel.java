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

public class ToolsPanel extends JPanel
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1127862851219036026L;

	private EditEnemyBaseInfo enemyBaseInfoDialog = new EditEnemyBaseInfo();
	
	private EditWarPlaneInfo warPlaneInfoDialog = new EditWarPlaneInfo();
		
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
	
	public List<WarPlaneInfo> getWarPlaneList()
	{
		return warPlaneInfoDialog.getWarPlaneList();
	}
	
	public Hashtable<Integer, Integer> getEnemyBaseList()
	{
		return enemyBaseInfoDialog.getEnemyBaseList();
	}
	
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

	private ActionListener exitListener = new ActionListener()
	{
		@Override
		public void actionPerformed(ActionEvent e)
		{
			System.exit(0);
		}
	};
	
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
