package game;

import javax.swing.JPanel;

import boardInfo.Board;
import boardInfo.Dice;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.awt.Label;
import java.awt.BorderLayout;

public class GameInfoPanel extends JPanel{
	
	public GameInfoPanel(Board board) {
		this.setLayout(new BorderLayout());
		this.setSize(200,400);
		this.setLocation(0,0);
		this.setBounds(0, 0, 200, 400);
		this.setVisible(true);
				
	}

}
