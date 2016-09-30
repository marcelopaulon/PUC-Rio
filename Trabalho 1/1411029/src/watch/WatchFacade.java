package watch;

import java.util.Observable;

import view.analogWatch.AnalogWatch;
import view.digitalWatch.DigitalWatch;
import watch.state.WatchState;

public class WatchFacade {
	private WatchInfo watchInfo;
	
	private AnalogWatch analogWatch;
	private DigitalWatch digitalWatch;
	
	public WatchFacade(Observable changeObservable)
	{
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
