package view.analogWatch;

import javax.swing.JFrame;

import view.common.WatchView;

public final class AnalogWatch extends WatchView {
	private JFrame window;
	private AnalogWatchPanel panel;
	
	public AnalogWatch(int hours, int minutes, int milliseconds) {
		createWindow();
		setTime(hours, minutes, milliseconds);
	}
	
	public void createWindow()
	{
		window = new JFrame();
		window.setTitle("Relógio Analógico");
		window.setLocation(200, 200);
		
		panel = new AnalogWatchPanel();
		
		window.getContentPane().add(panel);

		window.pack();
		window.setSize(470, 500);
		window.setVisible(true);
	}
	
	
	@Override
	protected void setTime(int hours, int minutes, int milliseconds) {
		panel.setTime(hours, minutes, milliseconds / 1000);
	}

	@Override
	protected void setHoursState() {
		return;
	}

	@Override
	protected void setMinutesState() {
		return;
	}

	@Override
	protected void displayState() {
		return;
	}
}
