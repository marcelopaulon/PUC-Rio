package controller;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Observable;
import java.util.Observer;

import view.buttons.ButtonsView;
import watch.ButtonInfo;
import watch.WatchFacade;

public class WatchController extends Observable implements ActionListener, Observer
{
	private WatchFacade facade;

	private ButtonsView buttonsView;
	
	public WatchController()
	{
		facade = new WatchFacade(this);
		buttonsView = new ButtonsView();
		buttonsView.addObserver(this);
	}
	
	public void setTime(int hours, int minutes, int milliseconds)
	{
		facade.setTime(hours, minutes, milliseconds);
		
		this.setChanged();
		this.notifyObservers(facade.getWatchInfo());
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

	@Override
	public void update(Observable arg0, Object arg1) {
		ButtonInfo button = (ButtonInfo) arg1;
		
		boolean stateChanged = false;
		
		switch(button)
		{
			case BUTTON_A_PRESSED:
				stateChanged = facade.setAPressed();
				break;
			case BUTTON_A_RELEASED:
				stateChanged = facade.setAReleased();
				break;
			case BUTTON_B_PRESSED:
				stateChanged = facade.setBPressed();
				break;
			case BUTTON_B_RELEASED:
				stateChanged = facade.setBReleased();
				break;
		}

		if(stateChanged == true)
		{
			this.setChanged();
			this.notifyObservers(facade.getWatchInfo());
		}
	}
}
