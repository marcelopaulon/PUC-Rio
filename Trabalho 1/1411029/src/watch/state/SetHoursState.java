package watch.state;

import watch.WatchInfo;
import watch.WatchTimer;

public class SetHoursState extends WatchState {

	public SetHoursState()
	{
		try {
			WatchTimer.stop();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Override
	public String status() {
		return "Definir horas";
	}

	@Override
	public WatchState APressed() {
		return this;
	}

	@Override
	public WatchState AReleased() {
		return new SetMinutesState();
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
