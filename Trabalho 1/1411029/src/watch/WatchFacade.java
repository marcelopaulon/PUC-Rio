package watch;

import java.util.Observable;

import view.analogWatch.AnalogWatch;
import view.digitalWatch.DigitalWatch;
import watch.state.WatchState;

public class WatchFacade {
	private static WatchFacade instance = null;
	
	private WatchInfo watchInfo;
	
	private AnalogWatch analogWatch;
	private DigitalWatch digitalWatch;
	
	public WatchFacade(Observable changeObservable)
	{
		instance = this;
		
		watchInfo = new WatchInfo(0, 0, 0, WatchState.getInitialState(this));
				
		digitalWatch = new DigitalWatch(watchInfo.hours, watchInfo.minutes, watchInfo.milliseconds);
		changeObservable.addObserver(digitalWatch);
		
		analogWatch = new AnalogWatch(watchInfo.hours, watchInfo.minutes, watchInfo.milliseconds);
		changeObservable.addObserver(analogWatch);
	}
	
	public WatchInfo getWatchInfo()
	{
		return watchInfo;
	}
	
	public void setTime(int hours, int minutes, int milliseconds)
	{
		watchInfo.hours = hours;
		watchInfo.minutes = minutes;
		watchInfo.milliseconds = milliseconds;
	}
	
	public static void addHour() throws Exception
	{
		if(instance != null)
		{
			if(instance.watchInfo.hours + 1 >= 24)
			{
				instance.watchInfo.hours = 0;
			}
			else
			{
				instance.watchInfo.hours = instance.watchInfo.hours + 1;
			}
			
			instance.watchInfo.milliseconds = 0;
		}
		else
		{
			throw new Exception("Facade not initialized");
		}
	}
	
	public static void addMinute() throws Exception
	{
		if(instance != null)
		{
			if(instance.watchInfo.minutes + 1 >= 60)
			{
				instance.watchInfo.minutes = 0;
			}
			else
			{
				instance.watchInfo.minutes = instance.watchInfo.minutes + 1;
			}
			
			instance.watchInfo.milliseconds = 0;
		}
		else
		{
			throw new Exception("Facade not initialized");
		}
	}

	public void tick() {
		if(watchInfo.milliseconds + 100 >= 1000)
		{
			watchInfo.milliseconds = 0;
			
			if(watchInfo.minutes + 1 >= 60)
			{
				watchInfo.minutes = 0;
				
				if(watchInfo.hours >= 24)
				{
					watchInfo.hours = 0;
					watchInfo.minutes = 0;
				}
				else
				{
					watchInfo.hours += 1;
				}
			}
			else
			{
				watchInfo.minutes += 1;
			}
		}
		else
		{
			watchInfo.milliseconds += 100;
		}
	}

	public void setAPressed() {
		watchInfo.state = watchInfo.state.APressed();
	}

	public void setAReleased() {
		watchInfo.state = watchInfo.state.AReleased();
	}

	public void setBPressed() {
		watchInfo.state = watchInfo.state.BPressed();
	}

	public void setBReleased() {
		watchInfo.state = watchInfo.state.BReleased();
	}
}
