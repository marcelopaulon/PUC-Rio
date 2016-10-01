package watch;

import javax.swing.Timer;

import controller.WatchController;

public class WatchTimer {
	private Timer timer = null;
	
	public WatchTimer(WatchController watchController)
	{
		timer = new Timer(100, watchController);
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