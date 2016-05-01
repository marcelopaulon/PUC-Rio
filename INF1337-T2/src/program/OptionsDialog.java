package program;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.Point;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.AbstractButton;
import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JSpinner;
import javax.swing.JSpinner.DefaultEditor;
import javax.swing.SpinnerModel;
import javax.swing.SpinnerNumberModel;
import javax.swing.event.ChangeEvent;
import javax.swing.event.ChangeListener;

import map.MapPanel;

public class OptionsDialog extends JDialog implements ActionListener {

	private MapPanel mapPanel;
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -8074998916757410998L;

	public OptionsDialog(JFrame parent, MapPanel mapPanel)
	{
		super(parent, "Opções", true);
		
		this.mapPanel = mapPanel;
		
		if (parent != null)
		{
			Dimension parentSize = parent.getSize();
			Point p = parent.getLocation();
			setLocation(p.x + parentSize.width / 2, p.y + parentSize.height / 2);
		}
		
		JPanel optionsPane = new JPanel();
		optionsPane.setLayout(new BoxLayout(optionsPane, BoxLayout.Y_AXIS));
		optionsPane.add(new JLabel("Opções"));
		
		optionsPane.add(createShowPathPane(), BorderLayout.LINE_START);
		optionsPane.add(createAgentViewPane(), BorderLayout.LINE_START);
		optionsPane.add(createSpeedPane(), BorderLayout.LINE_START);
		
		getContentPane().add(optionsPane);
		
		createButtonPane();
		setDefaultCloseOperation(DISPOSE_ON_CLOSE);
		pack();
		setVisible(true);
	}
	
	private JPanel createShowPathPane()
	{
		JPanel showPathPane = new JPanel();
		JCheckBox showPathCb = new JCheckBox();
		showPathCb.setSelected(true);
		showPathCb.addActionListener(new ActionListener() {
	      public void actionPerformed(ActionEvent actionEvent) {
	          AbstractButton abstractButton = (AbstractButton) actionEvent.getSource();
	          boolean selected = abstractButton.getModel().isSelected();
	          mapPanel.showPath = selected;
	        }
        });
		showPathPane.add(showPathCb);
		showPathPane.add(new JLabel("Mostrar caminho percorrido pelo agente"));
		return showPathPane;
	}
	
	private JPanel createAgentViewPane()
	{
		JPanel agentViewPane = new JPanel();
		JCheckBox agentViewCb = new JCheckBox();
		agentViewCb.addActionListener(new ActionListener() {
	      public void actionPerformed(ActionEvent actionEvent) {
	          AbstractButton abstractButton = (AbstractButton) actionEvent.getSource();
	          boolean selected = abstractButton.getModel().isSelected();
	          mapPanel.agentView = selected;
	        }
        });
		agentViewPane.add(agentViewCb);
		agentViewPane.add(new JLabel("Mostrar apenas a visão do agente"));
		return agentViewPane;
	}
	
	private JPanel createSpeedPane()
	{
		JPanel speedPane = new JPanel();
		speedPane.add(new JLabel("Velocidade do agente"));
		JSpinner speedSpinner = new JSpinner();
	    SpinnerModel model = new SpinnerNumberModel(1900, 0, 2000, 100);
	    speedSpinner.setModel(model);
	    ((DefaultEditor) speedSpinner.getEditor()).getTextField().setEditable(false);
	    speedSpinner.addChangeListener(new ChangeListener() {
	    	public void stateChanged(ChangeEvent e)
	    	{
	    		mapPanel.actionTimeIntervalMs = 2000 - ((Integer) speedSpinner.getValue());
	    	}
	    });
	    speedPane.add(speedSpinner);
		return speedPane;
	}
	
	private void createButtonPane()
	{
		JPanel buttonPane = new JPanel();
		JButton button = new JButton("Fechar");
		buttonPane.add(button);
		button.addActionListener(this);
		getContentPane().add(buttonPane, BorderLayout.SOUTH);
	}
	
	public void actionPerformed(ActionEvent e) {
		setVisible(false); 
		dispose(); 
	}
}
