package game;

import javax.swing.JPanel;

import boardInfo.Dice;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.awt.Label;
import java.awt.BorderLayout;
import java.awt.CardLayout;

import javax.swing.BoxLayout;

public class GameInfoPanel extends JPanel{
	private Integer diceResult = null;
	public GameInfoPanel() {
		this.setLayout(new BorderLayout());
		this.setSize(200,400);
		this.setLocation(0,0);
		this.setBounds(0, 0, 200, 400);
		this.setVisible(true);
		this.updateLabel();
		
		Label label = new Label(updateLabel());
		add(label,BorderLayout.NORTH);	
		
		JButton diceButton = new JButton("Rolar dado");
		diceButton.setBounds(22, 5, 85, 23);
		diceButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				diceResult = Dice.rollDice();
				label.setText(updateLabel());
			}
		});
		add(diceButton,BorderLayout.CENTER);
		
	}
	
	public String updateLabel(){
		StringBuilder diceText = new StringBuilder();
		if(diceResult!=null)
		{
			diceText.append("Resultado do dado: ");
			diceText.append(diceResult.toString());
		}
		else diceText.append("Role o dado usando o botão abaixo");
		return diceText.toString();
	}

}
