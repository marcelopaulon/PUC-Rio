package watch.state;

import watch.WatchTimer;

public class SetMinutesState extends WatchState {

	public SetMinutesState()
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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public WatchState APressed() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public WatchState AReleased() {
		return new DisplayState();
	}

	@Override
	public WatchState BPressed() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public WatchState BReleased() {
		// TODO Auto-generated method stub
		return null;
	}

}
