package game;

import javax.swing.JOptionPane;

import boardInfo.Board;

public class Notifications extends NotificationManager
{
	public Notifications(Board board) {
		super(board);
	}

	private static Notifications instance = null;
	
	public static NotificationManager getInstance(Board board)
	{
		if(instance == null)
		{
			instance = new Notifications(board);
		}
		
		return instance;
	}
	
	private void notify(String title, String message, int type)
	{
		if(board != null)
		{
			board.setChanged();
			board.notifyObservers();
		}
		
		JOptionPane.showMessageDialog(Program.getWindow(), message, title, type);
	}
	
	private void notifyInfo(String title, String message)
	{
		notify(title, message, JOptionPane.INFORMATION_MESSAGE);
	}
	
	public void notifyError(String message)
	{
		notify("Erro", message, JOptionPane.ERROR_MESSAGE);
	}
	
	public void notifyGameStart()
	{
		notifyInfo("Jogo Iniciado", "Clique no dado para começar");
	}

	public void notifyGameEnd(String[] positions)
	{
		String message = "O jogador " + positions[0] + " venceu esta partida.\n2º lugar: " + positions[1]
				+ "\n3º lugar: " + positions[2] + "\n4º lugar: " + positions[3] + "\nObrigado por ludar.";

		notifyInfo("Fim de jogo", message);
	}

	public void notifyGameLoadingError()
	{
		notifyError("Erro ao carregar o jogo.");
	}

	public void notifyCaptureBonus()
	{
		notifyInfo("BÔNUS! :)", "Você capturou uma peça de outro jogador. Avance 20 casas com qualquer um de seus peões.");
	}
	
	public void notifyExitBonus()
	{
		notifyInfo("BÔNUS! :)", "Você chegou a casa de destino. Avance 10 casas com qualquer um de seus peões.");
	}
	
	public void notify3Consecutive6Penalty()
	{
		notifyInfo("AZAR... :(", "Você tirou 3 dados 6 consecutivos. Volte com o último peão movido para a casa inicial.");
	}

	public void notify6RepeatMove()
	{
		notifyInfo("BÔNUS! :)", "Você tirou um dado 6. Lance o dado novamente.");
	}

	public void notify6Becomes7Bonus() {
		notifyInfo("BÔNUS! :)", "Você tirou um dado 6. Como não há mais peças na sua casa inicial, você ganha um movimento extra!");
	}

}
