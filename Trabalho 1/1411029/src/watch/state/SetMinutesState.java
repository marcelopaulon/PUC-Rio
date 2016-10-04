package watch.state;

public class SetMinutesState extends WatchState {

	public SetMinutesState()
	{
		_timer.stop();
	}
	
	@Override
	public StateCode getCode() {
		return WatchState.StateCode.SetMinutes;
	}

	@Override
	public WatchState APressed() {
		return new DisplayState();
	}

	@Override
	public WatchState AReleased() {
		return null;
	}

	@Override
	public WatchState BPressed() {
		_watch.addMinute();
		return this;
	}

	@Override
	public WatchState BReleased() {
		return null;
	}

}
