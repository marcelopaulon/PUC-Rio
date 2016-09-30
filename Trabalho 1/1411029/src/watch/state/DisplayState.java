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
	public String status() {
		return "Exibição";
	}

	@Override
	public WatchState APressed() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public WatchState AReleased() {
		return new SetHoursState();
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
