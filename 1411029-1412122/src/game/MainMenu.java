package game;

import javax.swing.JPanel;
import javax.swing.filechooser.FileNameExtensionFilter;

import boardInfo.Board;
import boardInfo.Dice;
import rules.GameControl;
import utils.Utils;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.io.IOException;

import javax.swing.JButton;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;

public class MainMenu extends JPanel
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 3921775669569750261L;

	private GameControl gameControl;
	
	public MainMenu(GameControl gameControl)
	{
		this();
		this.gameControl = gameControl;
	}

	private ActionListener newGameListener = new ActionListener() {
		@Override
		public void actionPerformed(ActionEvent arg0)
		{
			gameControl.startGame();
			Notifications.getInstance().notifyGameStart();
		}
	};

	private ActionListener exitGameListener = new ActionListener() {
		@Override
		public void actionPerformed(ActionEvent arg0)
		{
			System.exit(0);
		}
	};

	/**
	 * Defines what dialog appears when a map is loaded
	 * 
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
	 * Defines what happens when the "Carregar Jogo" button is presssed
	 */
	private ActionListener loadGameListener = new ActionListener() {
		@Override
		public void actionPerformed(ActionEvent e)
		{
			try
			{
				Board map = showLoadMapDialog();
				if (map != null)
				{
					gameControl.loadMap(map, Dice.getCurValue());
				}
			} catch (Exception exception)
			{
				Notifications.getInstance().notifyGameLoadingError();
			}
		}
	};

	/**
	 * Defines what happens when the "Salvar Jogo" button is presssed
	 */
	private ActionListener saveGameListener = new ActionListener() {
		@Override
		public void actionPerformed(ActionEvent e)
		{
			try
			{
				JFileChooser chooser = new JFileChooser() {
					/**
					 * 
					 */
					private static final long serialVersionUID = -6647937141202512730L;

					@Override
					public void approveSelection()
					{
						File f = getSelectedFile();
						if (f.exists() && getDialogType() == SAVE_DIALOG)
						{							
							int result = JOptionPane.showConfirmDialog(this,
									"O arquivo já existe. Deseja sobrescrevê-lo?", "Arquivo já existe",
									JOptionPane.YES_NO_CANCEL_OPTION);
							switch (result)
							{
								case JOptionPane.YES_OPTION:
									super.approveSelection();
									return;
								case JOptionPane.NO_OPTION:
									return;
								case JOptionPane.CLOSED_OPTION:
									return;
								case JOptionPane.CANCEL_OPTION:
									cancelSelection();
									return;
							}
						}

						super.approveSelection();
					}
				};
				
				chooser.setCurrentDirectory(new File("./saves"));
				chooser.setFileFilter(new FileNameExtensionFilter(".ludosave", "ludosave"));
				int retorno = chooser.showSaveDialog(null);

				if (retorno == JFileChooser.APPROVE_OPTION)
				{
					File file = chooser.getSelectedFile();

					if (Utils.getFileExtension(file.getName()).equalsIgnoreCase("ludosave"))
					{
						// filename is OK as-is
					}
					else
					{
						// append .ludosave
						file = new File(file.toString() + ".ludosave");

						file = new File(file.getParentFile(), Utils.getFileBaseName(file.getName()) + ".ludosave");
					}

					try
					{
						Board board = gameControl.getLoadedBoard();
						
						int result = JOptionPane.showConfirmDialog(chooser,
								"Deseja criptografar o jogo salvo?", "Criptografia",
								JOptionPane.YES_NO_OPTION);
						
						boolean shouldEncryptSave = false;
						
						if(result == JOptionPane.YES_OPTION)
						{
							shouldEncryptSave = true;
						}
						
						GameSave.saveToFile(board, file, shouldEncryptSave);
					} catch (IOException ex)
					{
						Notifications.getInstance().notifyError(ex.getMessage());
						ex.printStackTrace();
					}
				}

			} catch (Exception ex)
			{
				ex.printStackTrace();
			}
		}
	};

	public MainMenu()
	{

		JButton btnNovoJogo = new JButton("Novo Jogo");
		btnNovoJogo.addActionListener(newGameListener);
		add(btnNovoJogo);

		JButton btnCarregarJogo = new JButton("Carregar Jogo");
		btnCarregarJogo.addActionListener(loadGameListener);
		add(btnCarregarJogo);

		JButton btnSalvarJogo = new JButton("Salvar Jogo");
		btnSalvarJogo.addActionListener(saveGameListener);
		add(btnSalvarJogo);

		JButton btnSair = new JButton("Sair");
		btnSair.addActionListener(exitGameListener);
		add(btnSair);
	}
}
