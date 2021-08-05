package watch.state;

import watch.WatchFacade;
import watch.WatchTimer;

public abstract class WatchState {
	protected static WatchFacade _watch;
	protected static WatchTimer _timer;
	
	public enum StateCode
	{
		Display,
		SetHours,
		SetMinutes
	}
	
	public static WatchState getInitialState(WatchFacade watch, WatchTimer timer)
	{
		_watch = watch;
		_timer = timer;
		return new DisplayState();
	}
	
	public abstract StateCode getCode();
	
	public abstract WatchState APressed();
	public abstract WatchState AReleased();
	
	public abstract WatchState BPressed();
	public abstract WatchState BReleased();
}
