package watch;

import javax.swing.Timer;

import controller.WatchController;

public class WatchTimer {
	private static Timer timer = null;
	
	public WatchTimer(WatchController watchController)
	{
		timer = new Timer(100, watchController);
	}
	
	public static void start() throws Exception
	{
		if(timer == null)
		{
			throw new Exception("Timer not created");
		}
		
		timer.start();
	}
	
	public static void stop() throws Exception
	{
		if(timer == null)
		{
			throw new Exception("Timer not created");
		}
		
		timer.stop();
	}
}