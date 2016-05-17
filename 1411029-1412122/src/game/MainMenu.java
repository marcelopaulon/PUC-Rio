package game;

import javax.swing.JPanel;
import javax.swing.filechooser.FileNameExtensionFilter;

import boardInfo.Board;
import utils.Utils;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.io.IOException;

import javax.swing.JButton;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;

public class MainMenu extends JPanel {
	
	private GameControl gameControl;
	
	public MainMenu(GameControl gameControl)
	{
		this();
		this.gameControl = gameControl;
	}
	
	private ActionListener newGameListener = new ActionListener()
	{
		@Override
		public void actionPerformed(ActionEvent arg0) {
			gameControl.startGame();
		}
	};
	
	private ActionListener exitGameListener = new ActionListener()
	{
		@Override
		public void actionPerformed(ActionEvent arg0) {
			System.exit(0);
		}
	};
	
	/**
	 * Defines what dialog appears when a map is loaded
	 * @return Loaded map's GameMap or <b>null</b>
	 * @throws MapLoaderException
	 */
	public Board showLoadMapDialog() throws Exception
	{
		JFileChooser chooser = new JFileChooser();
		chooser.setCurrentDirectory(new File("./saves"));
		chooser.setFileFilter(new FileNameExtensionFilter("Apenas .ludosave", "ludosave"));
		int retorno = chooser.showOpenDialog(null);

		if (retorno == JFileChooser.APPROVE_OPTION)
		{
			return GameSave.loadFromFile(chooser.getSelectedFile());
		}

		return null;
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
				Board map = showLoadMapDialog();
				if(map != null)
				{
					Board savedMap = map;
					gameControl.loadMap(savedMap);
				}
			} catch (Exception exception)
			{
				JOptionPane.showMessageDialog(MainMenu.this, "Erro ao carregar o jogo.", "Erro",
						JOptionPane.WARNING_MESSAGE);
			}
		}
	};
	
	/**
	 * Defines what happens when the "Salvar Jogo" button is presssed
	 */
	private ActionListener saveGameListener = new ActionListener()
	{
		@Override
		public void actionPerformed(ActionEvent e)
		{
			try
			{
				JFileChooser chooser = new JFileChooser();
				chooser.setCurrentDirectory(new File("./saves"));
				chooser.setFileFilter(new FileNameExtensionFilter(".ludosave", "ludosave"));
				int retorno = chooser.showSaveDialog(null);

				if (retorno == JFileChooser.APPROVE_OPTION)
				{
					File file = chooser.getSelectedFile();
					
					if (Utils.getFileExtension(file.getName()).equalsIgnoreCase("ludosave")) {
					    // filename is OK as-is
					} else {
					    file = new File(file.toString() + ".ludosave");  // append .ludosave
					    file = new File(file.getParentFile(), Utils.getFileBaseName(file.getName())+".ludosave");
					}
					
					try {
						Board board = gameControl.getLoadedBoard();
			            GameSave.saveToFile(board, file);
			        } catch (IOException ex) {
			            ex.printStackTrace();
			        }
				}
				
			} catch (Exception ex) {
				ex.printStackTrace();
			}
		}
	};
	
	public MainMenu() {
		
		JButton btnNovoJogo = new JButton("Novo Jogo");
		btnNovoJogo.addActionListener(newGameListener);
		add(btnNovoJogo);
		
		JButton btnCarregarJogo = new JButton("Carregar Jogo");
		btnCarregarJogo.addActionListener(loadMapListener);
		add(btnCarregarJogo);
		
		JButton btnSalvarJogo = new JButton("Salvar Jogo");
		btnSalvarJogo.addActionListener(saveGameListener);
		add(btnSalvarJogo);
		
		JButton btnSair = new JButton("Sair");
		btnSair.addActionListener(exitGameListener);
		add(btnSair);
	}
}
