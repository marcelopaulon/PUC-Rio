package watch.state;

public class DisplayState extends WatchState {
	
	public DisplayState()
	{
		_timer.start();
	}
	
	@Override
	public StateCode getCode() {
		return WatchState.StateCode.Display;
	}
	
	@Override
	public WatchState APressed() {
		return null;
	}
	
	@Override
	public WatchState AReleased() {
		return new SetHoursState();
	}
	
	@Override
	public WatchState BPressed() {
		return null;
	}
	
	@Override
	public WatchState BReleased() {
		return null;
	}
	
}
