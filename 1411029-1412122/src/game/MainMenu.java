package game;

import javax.swing.JPanel;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;

public class MainMenu extends JPanel {
	
	private ActionListener exitGameListener = new ActionListener()
	{
		@Override
		public void actionPerformed(ActionEvent arg0) {
			System.exit(0);
		}
	};
	
	public MainMenu() {
		
		JButton btnNovoJogo = new JButton("Novo Jogo");
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
