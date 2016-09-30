package watch.state;

import watch.WatchFacade;

public abstract class WatchState {
	protected static WatchFacade _watch;
	
	public enum StateCode
	{
		Display,
		SetHours,
		SetMinutes
	}
	
	public static WatchState getInitialState(WatchFacade watch)
	{
		_watch = watch;
		return new DisplayState();
	}
	
	public abstract StateCode getCode();
	
	public abstract WatchState APressed();
	public abstract WatchState AReleased();
	
	public abstract WatchState BPressed();
	public abstract WatchState BReleased();
}
