package controller;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Observable;

import watch.WatchFacade;
import watch.WatchTimer;

public class WatchController extends Observable implements ActionListener
{
	WatchFacade facade;
	WatchTimer timer;
	
	public WatchController()
	{
		timer = new WatchTimer(this);
		facade = new WatchFacade(this);
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		if(facade != null)
		{
			facade.tick();
			this.setChanged();
			this.notifyObservers(facade.getWatchInfo());	
		}
	}
}
