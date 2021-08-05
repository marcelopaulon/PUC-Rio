package view.buttons;

import java.awt.Color;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Observable;

import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JFrame;

import watch.ButtonInfo;

public class ButtonsView extends Observable {

	private boolean a = false;
	private boolean b = false;
	
	private JFrame window;
	private JButton buttonA;
	private JButton buttonB;
	
	public ButtonsView()
	{
		createWindow();
	}
	
	private Color enabledColor = Color.ORANGE;
	private Color disabledColor = Color.WHITE;
	
	private ActionListener buttonAClick = new ActionListener() { 
	  public void actionPerformed(ActionEvent e) { 
	    if(b == false)
	    {
	    	a = !a;
	    	
	    	if(a == false)
	    	{
	    		buttonA.setBackground(disabledColor);
	    	}
	    	else
	    	{
	    		buttonA.setBackground(enabledColor);
	    	}
	    	
	    	setChanged();
	    	
	    	if(a == true)
	    	{
	    		notifyObservers(ButtonInfo.BUTTON_A_PRESSED);
	    	}
	    	else
	    	{
	    		notifyObservers(ButtonInfo.BUTTON_A_RELEASED);
	    	}
	    }
	  } 
	};
	
	private ActionListener buttonBClick = new ActionListener() { 
	  public void actionPerformed(ActionEvent e) { 
		  if(a == false)
		    {
		    	b = !b;
		    	
		    	if(b == false)
		    	{
		    		buttonB.setBackground(disabledColor);
		    	}
		    	else
		    	{
		    		buttonB.setBackground(enabledColor);
		    	}
		    	
		    	setChanged();

		    	if(b == true)
		    	{
		    		notifyObservers(ButtonInfo.BUTTON_B_PRESSED);
		    	}
		    	else
		    	{
		    		notifyObservers(ButtonInfo.BUTTON_B_RELEASED);
		    	}
		    }
	  } 
	};
	
	public void createWindow()
	{
		window = new JFrame();
		window.setTitle("Botões");
		
		window.getContentPane().setLayout(new BoxLayout(window.getContentPane(), BoxLayout.X_AXIS));
		
		Font font = new Font("Verdana", Font.PLAIN, 72);
		
		buttonA = new JButton("A");
		buttonA.setBackground(disabledColor);
		buttonA.setFont(font);
		buttonA.addActionListener(buttonAClick);
		
		buttonB = new JButton("B");
		buttonB.setBackground(disabledColor);
		buttonB.setFont(font);
		buttonB.addActionListener(buttonBClick);
		
		window.add(buttonA);
		window.add(buttonB);
		
		window.pack();
		window.setVisible(true);
	}
}
