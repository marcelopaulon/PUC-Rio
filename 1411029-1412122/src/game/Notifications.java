package game;

import javax.swing.JOptionPane;

public class Notifications
{
	
	private static void notify(String title, String message, int type)
	{
		GamePanel.requestRedraw();
		JOptionPane.showMessageDialog(GamePanel.getInstance(), message, title, type);
	}
	
	private static void notifyInfo(String title, String message)
	{
		notify(title, message, JOptionPane.INFORMATION_MESSAGE);
	}
	
	public static void notifyError(String message)
	{
		notify("Erro", message, JOptionPane.ERROR_MESSAGE);
	}
	
	public static void notifyGameStart()
	{
		notifyInfo("Jogo Iniciado", "Clique no dado para come�ar");
	}

	public static void notifyGameEnd(String[] positions)
	{
		String message = "O jogador " + positions[0] + " venceu esta partida.\n2� lugar: " + positions[1]
				+ "\n3� lugar: " + positions[2] + "\n4� lugar: " + positions[3] + "\nObrigado por ludar.";

		notifyInfo("Fim de jogo", message);
	}

	public static void notifyGameLoadingError()
	{
		notifyError("Erro ao carregar o jogo.");
	}

	public static void notifyCaptureBonus()
	{
		notifyInfo("B�NUS! :)", "Voc� capturou uma pe�a de outro jogador. Avance 20 casas com qualquer um de seus pe�es.");
	}
	
	public static void notifyExitBonus()
	{
		notifyInfo("B�NUS! :)", "Voc� chegou a casa de destino. Avance 10 casas com qualquer um de seus pe�es.");
	}
	
	public static void notify3Consecutive6Penalty()
	{
		notifyInfo("AZAR... :(", "Voc� tirou 3 dados 6 consecutivos. Volte com o �ltimo pe�o movido para a casa inicial.");
	}

	public static void notify6RepeatMove()
	{
		notifyInfo("B�NUS! :)", "Voc� tirou um dado 6. Lance o dado novamente.");
	}

	public static void notify6Becomes7Bonus() {
		notifyInfo("B�NUS! :)", "Voc� tirou um dado 6. Como n�o h� mais pe�as na sua casa inicial, voc� ganha um movimento extra!");
	}

}
