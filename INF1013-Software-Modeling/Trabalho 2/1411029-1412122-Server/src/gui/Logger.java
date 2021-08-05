package gui;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Observable;
import java.util.Observer;

import javax.swing.JPanel;
import javax.swing.JTextArea;

public class Logger extends JPanel implements Observer {
	private static final long serialVersionUID = 1535266953869749033L;
	
	private JTextArea loggingTextArea = new JTextArea();
	
	@Override
	public void update(Observable arg0, Object arg1) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		loggingTextArea.setText(loggingTextArea.getText() + "\n" + sdf.format(new Date()) + ": " + (String) arg1);
	}
	
	public Logger()
	{
		loggingTextArea.setEditable(false);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		loggingTextArea.setText(sdf.format(new Date()) + ": Servidor iniciado.");
		this.add(loggingTextArea);
	}
	
}
