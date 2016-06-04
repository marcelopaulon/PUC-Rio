package game;

import javax.swing.JOptionPane;

public class Notifications {

	public static void notifyGameEnd(String[] positions) {
		String message = "O jogador " + positions[0] + " venceu esta partida.\n2º lugar: " + positions[1] + "\n3º lugar: " + positions[2] + "\n4º lugar: " + positions[3] + "\nObrigado por ludar.";
		
		JOptionPane.showMessageDialog(GamePanel.getInstance(), message, "Fim de jogo",
				JOptionPane.WARNING_MESSAGE);
	}

}
