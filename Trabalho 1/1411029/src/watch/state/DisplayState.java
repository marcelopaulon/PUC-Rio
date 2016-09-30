package watch.state;

import watch.WatchTimer;

public class DisplayState extends WatchState {
	
	public DisplayState()
	{
		try {
			WatchTimer.start();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Override
	public StateCode getCode() {
		return WatchState.StateCode.Display;
	}
	
	@Override
	public WatchState APressed() {
		return this;
	}
	
	@Override
	public WatchState AReleased() {
		return new SetHoursState();
	}
	
	@Override
	public WatchState BPressed() {
		return this;
	}
	
	@Override
	public WatchState BReleased() {
		return this;
	}
	
}
