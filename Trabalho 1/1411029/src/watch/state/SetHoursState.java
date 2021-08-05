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
		return new SetMinutesState();
	}

	@Override
	public WatchState AReleased() {
		return null;
	}

	@Override
	public WatchState BPressed() {
		_watch.addHour();
		return this;
	}

	@Override
	public WatchState BReleased() {
		return null;
	}

}
