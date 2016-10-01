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
		return null;
	}

	@Override
	public WatchState AReleased() {
		return new DisplayState();
	}

	@Override
	public WatchState BPressed() {
		return null;
	}

	@Override
	public WatchState BReleased() {
		_watch.addMinute();
		return this;
	}

}
