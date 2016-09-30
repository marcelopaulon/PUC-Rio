package watch;

import java.util.Observable;

import view.analogWatch.AnalogWatch;
import view.buttons.ButtonsView;
import view.digitalWatch.DigitalWatch;
import watch.state.WatchState;

public class WatchFacade {
	private WatchInfo watchInfo;
	
	private AnalogWatch analogWatch;
	private DigitalWatch digitalWatch;
	private ButtonsView buttonsView;
	
	public WatchFacade(Observable tickObservable)
	{
		watchInfo = new WatchInfo(0, 0, 0, WatchState.getInitialState(this));
		
		buttonsView = new ButtonsView();
		
		digitalWatch = new DigitalWatch(watchInfo.hours, watchInfo.minutes, watchInfo.milliseconds);
		buttonsView.addObserver(digitalWatch);
		tickObservable.addObserver(digitalWatch);
		
		analogWatch = new AnalogWatch(watchInfo.hours, watchInfo.minutes, watchInfo.milliseconds);
		buttonsView.addObserver(analogWatch);
		tickObservable.addObserver(analogWatch);
	}
	
	public WatchInfo getWatchInfo()
	{
		return watchInfo;
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
		
		digitalWatch.update(buttonsView, watchInfo);
	}
}
