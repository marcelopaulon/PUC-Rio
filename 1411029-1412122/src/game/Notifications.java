package game;

import javax.swing.JOptionPane;

public class Notifications {

	public static void notifyGameEnd(String[] positions) {
		String message = "O jogador " + positions[0] + " venceu esta partida.\n2� lugar: " + positions[1] + "\n3� lugar: " + positions[2] + "\n4� lugar: " + positions[3] + "\nObrigado por ludar.";
		
		JOptionPane.showMessageDialog(GamePanel.getInstance(), message, "Fim de jogo",
				JOptionPane.WARNING_MESSAGE);
	}

}
