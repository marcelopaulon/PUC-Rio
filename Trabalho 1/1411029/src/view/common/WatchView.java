package view.common;

import java.util.Observable;
import java.util.Observer;

import watch.WatchInfo;

public abstract class WatchView implements Observer {
	protected abstract void setTime(int hours, int minutes, int milliseconds);
	
	protected abstract void setHoursState();
	protected abstract void setMinutesState();
	protected abstract void displayState();
	
	@Override
	public final void update(Observable o, Object arg) {
		WatchInfo info = (WatchInfo) arg;
		setTime(info.hours, info.minutes, info.milliseconds);
		
		switch(info.state.getCode())
		{
			case Display:
				displayState();
				break;
			case SetHours:
				setHoursState();
				break;
			case SetMinutes:
				setMinutesState();
				break;
		}
	}
}
