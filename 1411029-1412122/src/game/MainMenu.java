package game;

import javax.swing.JPanel;

import action.ActionManager;
import boardInfo.Board;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;

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
	
	public MainMenu() {
		
		JButton btnNovoJogo = new JButton("Novo Jogo");
		btnNovoJogo.addActionListener(newGameListener);
		add(btnNovoJogo);
		
		JButton btnCarregarJogo = new JButton("Carregar Jogo");
		add(btnCarregarJogo);
		
		JButton btnSalvarJogo = new JButton("Salvar Jogo");
		add(btnSalvarJogo);
		
		JButton btnSair = new JButton("Sair");
		btnSair.addActionListener(exitGameListener);
		add(btnSair);
	}
}
