package watch;

import java.awt.event.ActionListener;

import javax.swing.Timer;

public class WatchTimer {
	private Timer timer = null;
	
	public WatchTimer(ActionListener actionListener)
	{
		timer = new Timer(100, actionListener);
	}
	
	public void start()
	{
		timer.start();
	}
	
	public void stop()
	{
		timer.stop();
	}
}