package program;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.ComponentOrientation;
import java.util.List;
import java.util.StringJoiner;

import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.ImageIcon;
import javax.swing.JPanel;
import javax.swing.JProgressBar;
import javax.swing.border.Border;

import gfx.ImageLoader;
import pathfinding.WarPlaneInfo;
import javax.swing.JLabel;
import java.awt.image.BufferedImage;
import java.awt.Label;

/**
 * Panel containing each ship's remaining energy
 *
 */
public class PlanesPanel extends JPanel{

	/**
	 * Class serialization version identifier
	 * @see <a href=http://blog.caelum.com.br/entendendo-o-serialversionuid/>Entendendo o serialVersionUID</a>
	 */
	private static final long serialVersionUID = 6004525539230391406L;
	
	private JPanel mainPanel;
	
	private JPanel[] panelArray = new JPanel[5];
	private Label[] labelArray = new Label[5];
	private BufferedImage[] imageArray = new BufferedImage[5];
	private JLabel[] picLabelArray = new JLabel[5];
	private JProgressBar[] healthBarArray = new JProgressBar[5];
	
	/**
	 * PlanesPanel constructor
	 * <p><b>PlanesPanel:</b> Panel containing each ship's remaining energy</p>
	 */
	public PlanesPanel(){
		super();
		this.setBackground(Color.WHITE);
	    Border b1 = BorderFactory.createTitledBorder("Aviões");
	    Border b2 = BorderFactory.createLineBorder(Color.BLACK, 2);
	    this.setBorder(BorderFactory.createCompoundBorder(b2, b1));
	    this.setSize(800,400);
	    setLayout(new BoxLayout(this, BoxLayout.X_AXIS));

		mainPanel = new JPanel();	    
	    Refresh(true);
	}
	
	/*
	 * Gets the airplane label
	 * @param warPlaneList List of war plane info
	 * @param i War plane index
	 */
	private String getWarplaneLabel(List<WarPlaneInfo> warPlaneList, int i)
	{
		return warPlaneList.get(i).getName() + " (" + warPlaneList.get(i).getEnergy() + " / 5)";
	}
	
	/**
	 * Refreshes the planes' health bar when their order change in the table
	 */
	public void Refresh(boolean refreshHealthBar)
	{
		mainPanel.removeAll();
		
	    mainPanel.setLayout(new BoxLayout(mainPanel, BoxLayout.X_AXIS));
    	List<WarPlaneInfo> warPlaneList = Program.getInstance().getWarPlaneList();
	    
		for(Integer i=0;i<5;i++){
	    	StringJoiner path = new StringJoiner("");
	    	path.add("/").add(warPlaneList.get(i).getName()).add(".png");
	    	
	    	panelArray[i] = new JPanel();
	    	labelArray[i] = new Label(getWarplaneLabel(warPlaneList, i));
	    	imageArray[i] = ImageLoader.loadImage(path.toString());
	    	picLabelArray[i] = new JLabel(new ImageIcon(imageArray[i]));
	    	panelArray[i].setLayout(new BorderLayout());
	    	
	    	if(refreshHealthBar == true)
	    	{
		    	healthBarArray[i] = new JProgressBar();
		    	ConfigHealthBar(healthBarArray[i]);
	    	}
	    	
	    	mainPanel.add(panelArray[i]);
	    	panelArray[i].add(labelArray[i], BorderLayout.NORTH); 
	    	panelArray[i].add(picLabelArray[i], BorderLayout.CENTER);
	    	panelArray[i].add(healthBarArray[i], BorderLayout.SOUTH);
	    }
		
		this.add(mainPanel);
		
		this.revalidate();
	}
	
	/**
	 * Configures the planes' health bars
	 * <p>Enegry bar is a backwards progress bar</p>
	 * @param health Energy bar to be configured
	 */
	private void ConfigHealthBar(JProgressBar health){
		health.setMaximum(5);
		health.setValue(0);
		health.setComponentOrientation(ComponentOrientation.RIGHT_TO_LEFT);
		health.setForeground(Color.RED);
		health.setBackground(Color.GREEN);
	}
	
	/**
	 * Updates the planes' health bars
	 */
	public void UpdateHealthBars(List<WarPlaneInfo> warPlaneList){
		for(int i=0; i<5; i++){
			labelArray[i].setText(getWarplaneLabel(warPlaneList, i));
			healthBarArray[i].setValue(5 - warPlaneList.get(i).getEnergy());
		}
	}
	
}
