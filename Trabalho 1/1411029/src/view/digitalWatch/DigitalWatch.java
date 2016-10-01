package view.digitalWatch;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.Font;

import javax.swing.BoxLayout;
import javax.swing.JFrame;
import javax.swing.JLabel;

import view.common.WatchView;

public final class DigitalWatch extends WatchView {
	private JFrame window;
	private JLabel hoursLabel;
	private JLabel separatorLabel;
	private JLabel minutesLabel;
	
	private Color displayColor = Color.BLACK;
	private Color highlightColor = Color.RED;
	
	public DigitalWatch(int hours, int minutes, int milliseconds) {
		createWindow();
		setTime(hours, minutes, milliseconds);
	}
	
	@Override
	protected void setTime(int hours, int minutes, int milliseconds) {
		if(hours > 9)
		{
			hoursLabel.setText(Integer.toString(hours));
		}
		else
		{
			hoursLabel.setText("0" + Integer.toString(hours));
		}

		if(minutes > 9)
		{
			minutesLabel.setText(Integer.toString(minutes));
		}
		else
		{
			minutesLabel.setText("0" + Integer.toString(minutes));
		}
	}
	
	private void createWindow()
	{
		window = new JFrame();
		window.setTitle("Relógio Digital");
		window.getContentPane().setLayout(new BoxLayout(window.getContentPane(), BoxLayout.X_AXIS));
		window.setLocation(200, 50);
		
		Font font = new Font("Verdana", Font.PLAIN, 72);
		
		hoursLabel = new JLabel("--");
		hoursLabel.setFont(font);
		
		separatorLabel = new JLabel(":");
		separatorLabel.setFont(font);

		minutesLabel = new JLabel("--");
		minutesLabel.setFont(font);
		
		window.add(hoursLabel);
		window.add(separatorLabel);
		window.add(minutesLabel);
		window.setMinimumSize(new Dimension(235,150));
		
		window.pack();
				
		window.setVisible(true);
	}

	@Override
	protected void setHoursState() {
		minutesLabel.setForeground(displayColor);
		hoursLabel.setForeground(highlightColor);
	}

	@Override
	protected void setMinutesState() {
		hoursLabel.setForeground(displayColor);
		minutesLabel.setForeground(highlightColor);
	}

	@Override
	protected void displayState() {
		hoursLabel.setForeground(displayColor);
		minutesLabel.setForeground(displayColor);
	}

}
