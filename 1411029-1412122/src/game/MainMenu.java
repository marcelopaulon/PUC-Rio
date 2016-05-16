package game;

import javax.swing.JPanel;
import javax.swing.filechooser.FileNameExtensionFilter;

import boardInfo.Board;
import boardInfo.Dice;
import boardInfo.Lane;
import boardInfo.Pocket;
import boardInfo.Square;
import boardInfo.Track;
import boardInfo.Yard;
import playerInfo.PlayerColor;
import utils.Utils;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

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
		return null;
		/*
		JFileChooser chooser = new JFileChooser();
		chooser.setCurrentDirectory(null);
		chooser.setFileFilter(new FileNameExtensionFilter("Apenas .ludosave", "ludosave"));
		int retorno = chooser.showOpenDialog(null);

		if (retorno == JFileChooser.APPROVE_OPTION)
		{
			return MapLoader.tryLoadMap(chooser.getSelectedFile());
		}

		return null;*/
	}
	
	/**
	 * Defines what happens when the "Carregar Mapa" button is presssed
	 */ /*
	private ActionListener loadMapListener = new ActionListener()
	{
		@Override
		public void actionPerformed(ActionEvent e)
		{
			try{
				Board map = showLoadMapDialog();
				if(map != null)
				{
					savedMap = map;
					mapPanel.loadMap(savedMap);
				}
			} catch (Exception exception)
			{
				JOptionPane.showMessageDialog(MainMenu.this, "Erro ao carregar o jogo.", "Erro",
						JOptionPane.WARNING_MESSAGE);
			}
		}
	};*/
	
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
				chooser.setCurrentDirectory(null);
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
			            PrintWriter fileOut = new PrintWriter(file);

			            Board board = gameControl.getLoadedBoard();
			            
			            fileOut.write("CURPLAYER=" + board.getCurrentPlayer().asInt());
			            fileOut.write("\nCURDICE=" + Dice.getCurValue());
			            
			            Track track = board.getTrack();
			            
			            for (int i = 1; i <= 52; i++) {
			            	Square square = track.getSquareAt(i);
			            	if(square.getPawnCount() > 0)
			            	{
			            		fileOut.write("\nTRACKPOSITION=" + i + "&COLOR=" + square.getPawnsColor().asInt() + "&COUNT=" + square.getPawnCount());
			            	}
						}
			            
			            for (int i = 1; i <= 4; i++)
			            {
			            	PlayerColor playerColor = PlayerColor.get(i);
			            	
			            	Yard yard = board.getYard(playerColor);
			            	
			            	fileOut.write("\nYARDCOLOR=" + playerColor.asInt() + "&COUNT=" + yard.getCount());
			            	
			            	Pocket pocket = board.getPocket(playerColor);
			            	
			            	fileOut.write("\nPOCKETCOLOR=" + playerColor.asInt() + "&COUNT=" + pocket.getCount());
			            	
			            	Lane lane = board.getLane(playerColor);
			            	
			            	for (int j = 1; j <= 5; j++)
			            	{
			            		Square square = lane.getSquareAt(j);
			            		if(square.getPawnCount() > 0)
				            	{
				            		fileOut.write("\nLANEPOSITION=" + j + "&COLOR=" + square.getPawnsColor().asInt() + "&COUNT=" + square.getPawnCount());
				            	}
			            	}
			            	
			            	
			            }
			            
			            fileOut.write("\n");
			            
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
	
	public MainMenu() {
		
		JButton btnNovoJogo = new JButton("Novo Jogo");
		btnNovoJogo.addActionListener(newGameListener);
		add(btnNovoJogo);
		
		JButton btnCarregarJogo = new JButton("Carregar Jogo");
		add(btnCarregarJogo);
		
		JButton btnSalvarJogo = new JButton("Salvar Jogo");
		btnSalvarJogo.addActionListener(saveGameListener);
		add(btnSalvarJogo);
		
		JButton btnSair = new JButton("Sair");
		btnSair.addActionListener(exitGameListener);
		add(btnSair);
	}
}
