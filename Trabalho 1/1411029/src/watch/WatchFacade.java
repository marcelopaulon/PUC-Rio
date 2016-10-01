package watch;

import controller.WatchController;
import view.analogWatch.AnalogWatch;
import view.digitalWatch.DigitalWatch;
import watch.state.WatchState;

public class WatchFacade {	
	private WatchInfo watchInfo;
	
	private AnalogWatch analogWatch;
	private DigitalWatch digitalWatch;
	
	public WatchFacade(WatchController watchController)
	{
		watchInfo = new WatchInfo(0, 0, 0, WatchState.getInitialState(this, new WatchTimer(watchController)));
		
		digitalWatch = new DigitalWatch(watchInfo.hours, watchInfo.minutes, watchInfo.milliseconds);
		watchController.addObserver(digitalWatch);
		
		analogWatch = new AnalogWatch(watchInfo.hours, watchInfo.minutes, watchInfo.milliseconds);
		watchController.addObserver(analogWatch);
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
	
	public void addHour()
	{
		if(watchInfo.hours + 1 >= 24)
		{
			watchInfo.hours = 0;
		}
		else
		{
			watchInfo.hours = watchInfo.hours + 1;
		}
		
		watchInfo.milliseconds = 0;
	}
	
	public void addMinute()
	{
		if(watchInfo.minutes + 1 >= 60)
		{
			watchInfo.minutes = 0;
		}
		else
		{
			watchInfo.minutes = watchInfo.minutes + 1;
		}
		
		watchInfo.milliseconds = 0;
	}

	public void tick() {
		if(watchInfo.milliseconds + 100 >= 1000 * 60)
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
	
	public boolean setAPressed() {
		WatchState state = watchInfo.state.APressed();
		
		if(state != null)
		{
			watchInfo.state = state;
			return true;
		}
		
		return false;
	}

	public boolean setAReleased() {
		WatchState state = watchInfo.state.AReleased();
		
		if(state != null)
		{
			watchInfo.state = state;
			return true;
		}
		
		return false;
	}

	public boolean setBPressed() {
		WatchState state = watchInfo.state.BPressed();
		
		if(state != null)
		{
			watchInfo.state = state;
			return true;
		}
		
		return false;
	}

	public boolean setBReleased() {
		WatchState state = watchInfo.state.BReleased();
		
		if(state != null)
		{
			watchInfo.state = state;
			return true;
		}
		
		return false;
	}
}
