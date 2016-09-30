package watch.state;

import watch.WatchFacade;
import watch.WatchTimer;

public class SetMinutesState extends WatchState {

	public SetMinutesState()
	{
		try {
			WatchTimer.stop();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public StateCode getCode() {
		return WatchState.StateCode.SetMinutes;
	}

	@Override
	public WatchState APressed() {
		return this;
	}

	@Override
	public WatchState AReleased() {
		return new DisplayState();
	}

	@Override
	public WatchState BPressed() {
		return this;
	}

	@Override
	public WatchState BReleased() {
		try {
			WatchFacade.addMinute();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return this;
	}

}
