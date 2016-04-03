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
 * Painel contendo a energia restante de cada nave
 *
 */
public class PlanesPanel extends JPanel{

	/**
	 * Identificador de versão de serialização de uma classe
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
	 * Construtor de PlanesPanel
	 * <p><b>PlanesPanel:</b> painel contendo a energia restante de cada nave</p>
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
	    Refresh();
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
	 * Atualiza a barra de energia dos aviões quando a ordem deles na tabela muda
	 */
	public void Refresh()
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
	    	healthBarArray[i] = new JProgressBar();
	    	
	    	panelArray[i].setLayout(new BorderLayout());
	    	ConfigHealthBar(healthBarArray[i]);
	    			
	    	mainPanel.add(panelArray[i]);
	    	panelArray[i].add(labelArray[i], BorderLayout.NORTH); 
	    	panelArray[i].add(picLabelArray[i], BorderLayout.CENTER);
	    	panelArray[i].add(healthBarArray[i], BorderLayout.SOUTH);
	    }
		
		this.add(mainPanel);
		
		this.revalidate();
	}
	
	/**
	 * Configura as barras de energia dos aviões
	 * <p>A barra de energia é uma progress bar ao contrário</p>
	 * @param health Barra de energia a ser configurada
	 */
	private void ConfigHealthBar(JProgressBar health){
		health.setMaximum(5);
		health.setValue(0);
		health.setComponentOrientation(ComponentOrientation.RIGHT_TO_LEFT);
		health.setForeground(Color.RED);
		health.setBackground(Color.GREEN);
	}
	
	/**
	 * Atualiza as barras de energia dos aviões
	 */
	public void UpdateHealthBars(List<WarPlaneInfo> warPlaneList){
		for(int i=0; i<5; i++){
			labelArray[i].setText(getWarplaneLabel(warPlaneList, i));
			healthBarArray[i].setValue(5 - warPlaneList.get(i).getEnergy());
		}
	}
	
}
