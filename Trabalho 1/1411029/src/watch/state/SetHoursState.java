package watch.state;

public class SetHoursState extends WatchState {
	
	public SetHoursState()
	{
		_timer.stop();
	}
	
	@Override
	public StateCode getCode() {
		return WatchState.StateCode.SetHours;
	}

	@Override
	public WatchState APressed() {
		return null;
	}

	@Override
	public WatchState AReleased() {
		return new SetMinutesState();
	}

	@Override
	public WatchState BPressed() {
		return null;
	}

	@Override
	public WatchState BReleased() {
		_watch.addHour();
		return this;
	}

}
