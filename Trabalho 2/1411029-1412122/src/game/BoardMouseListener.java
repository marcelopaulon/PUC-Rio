package game;

import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;

import notifications.NotificationManager;
import utils.ConstantsEnum;

class BoardMouseListener implements MouseListener
{
	private NotificationManager notificationManager;
	
	public BoardMouseListener(NotificationManager notificationManager)
	{
		this.notificationManager = notificationManager;
	}

	@Override
	public void mouseClicked(MouseEvent e)
	{

	}

	@Override
	public void mouseEntered(MouseEvent e)
	{

	}

	@Override
	public void mouseExited(MouseEvent e)
	{

	}

	@Override
	public void mousePressed(MouseEvent e)
	{

	}

	@Override
	public void mouseReleased(MouseEvent e)
	{
		int x = (int) (1 + e.getX() / ConstantsEnum.squareSize);
		int y = (int) (1 + e.getY() / ConstantsEnum.squareSize);

		try {
			ActionManager.getInstance().executeAction(x, y);
		} catch (Exception ex) {
			notificationManager.notifyError("Erro ao executar ação:\n" + ex.getMessage());
		}
	}

}
