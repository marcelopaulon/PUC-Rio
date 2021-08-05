package watch;

import watch.state.WatchState;

public class WatchInfo {	
	public int hours;
	public int minutes;
	public int milliseconds;

	public WatchState state;
	
	public WatchInfo(int h, int m, int ms, WatchState s)
	{
		hours = h;
		minutes = m;
		milliseconds = ms;
		state = s;
	}
}
