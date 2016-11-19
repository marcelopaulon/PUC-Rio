package game;

import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;

class SplashScreenKeyListener implements KeyListener
{

	private Thread thread;

	public SplashScreenKeyListener(Thread thread)
	{
		this.thread = thread;
	}

	@Override
	public void keyPressed(KeyEvent evt)
	{

	}

	@Override
	public void keyReleased(KeyEvent evt)
	{
		if (evt.getKeyCode() == KeyEvent.VK_ENTER)
		{
			thread.interrupt();
		}
	}

	@Override
	public void keyTyped(KeyEvent evt)
	{

	}

}
