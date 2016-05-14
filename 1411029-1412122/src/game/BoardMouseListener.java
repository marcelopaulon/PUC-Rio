package game;

import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;

import action.ActionManager;
import utils.ConstantsEnum;

public class BoardMouseListener implements MouseListener {

	@Override
	public void mouseClicked(MouseEvent e) {
		
	}

	@Override
	public void mouseEntered(MouseEvent e) {
		
	}

	@Override
	public void mouseExited(MouseEvent e) {
		
	}

	@Override
	public void mousePressed(MouseEvent e) {
		
	}

	@Override
	public void mouseReleased(MouseEvent e) {
		int x = (int) (1 + e.getX()/ConstantsEnum.squareSize);
		int y = (int) (1 + e.getY()/ConstantsEnum.squareSize);
		
		ActionManager.getInstance().executeAction(x, y);
	}

}
