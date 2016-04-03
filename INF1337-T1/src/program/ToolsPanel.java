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
 * Painel superior contendo botões como "Carregar Mapa" e "Bases Inimigas"
 *
 */
public class ToolsPanel extends JPanel
{
	/**
	 * Identificador de versão de serialização de uma classe
	 * @see <a href=http://blog.caelum.com.br/entendendo-o-serialversionuid/>Entendendo o serialVersionUID</a>
	 */
	private static final long serialVersionUID = 1127862851219036026L;

	private EditEnemyBaseInfo enemyBaseInfoDialog = new EditEnemyBaseInfo();
	
	private EditWarPlaneInfo warPlaneInfoDialog = new EditWarPlaneInfo();
	
	/**
	 * Construtor de ToolsPanel
	 * <p><b>ToolsPanel:</b> painel superior contendo botões como "Carregar Mapa" e "Bases Inimigas".</p>
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
	 * Pega a tabela de informações das naves
	 * @return Lista contendo nome e poder de fogo das naves
	 * @see EditWarPlaneInfo#getWarPlaneList() getWarPlaneList em EditWarPlaneInfo
	 */
	public List<WarPlaneInfo> getWarPlaneList()
	{
		return warPlaneInfoDialog.getWarPlaneList();
	}
	
	/**
	 * Pega a tabela de informações das bases inimigas
	 * @return Hashtable contendo id de cada base inimiga e sua dificuldade
	 * @see EditEnemyBaseInfo#getEnemyBaseList() getEnemyBaseList em EditEnemyBaseInfo
	 */
	public Hashtable<Integer, Integer> getEnemyBaseList()
	{
		return enemyBaseInfoDialog.getEnemyBaseList();
	}
	
	/**
	 * Define o que acontece quando o botão "Carregar Mapa" é apertado
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
	 * Define o que acontece quando o botão "Bases Inimigas" é apertado
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
	 * Define o que acontece quando o botão "Aviões" é apertado
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
	 * Define o que acontece quando o botão "Sair" é apertado
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
	 * Define o diálogo de carregar um arquivo com um mapa
	 * @return GameMap do mapa carregado ou <b>null</b>
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
