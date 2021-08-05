package gui;

import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;

class SplashScreenMouseListener implements MouseListener
{

	private Thread thread;

	public SplashScreenMouseListener(Thread thread)
	{
		this.thread = thread;
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
		thread.interrupt();
	}

}