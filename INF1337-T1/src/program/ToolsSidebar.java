package program;

import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.text.DecimalFormat;

import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.border.Border;

import pathfinding.AStar;
import pathfinding.Path;
import map.GameMap;
import map.MapPanel;

public class ToolsSidebar extends JPanel {
	private AStar astar = new AStar();
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 3548211981279388502L;
	
	private GameMap map;
	private MapPanel mapPanel;
	
    private JButton findPathButton = new JButton("Encontrar caminho");
    private JButton clearPathButton = new JButton("Limpar caminho");
	
	private JLabel mapSizeLabel = new JLabel("-");
	private JLabel costLabel = new JLabel("-");
	private JLabel pathLengthLabel = new JLabel("-");
	private JLabel pathCalculationTimeLabel = new JLabel("-");
	
	public void setMap(GameMap map)
	{
		this.map = map;
		mapSizeLabel.setText(map.getNRows() + "x" + map.getNColumns());
	}
	
	public void setCost(double cost)
	{
		DecimalFormat df = new DecimalFormat("#.00"); 
		costLabel.setText(df.format(cost));
	}
	
	private void setPathLength(int length)
	{
		pathLengthLabel.setText(Integer.toString(length));
	}
	
	private void setPathCalculationTime(double calculationTime)
	{
		DecimalFormat df = new DecimalFormat("#.00"); 
		pathCalculationTimeLabel.setText(df.format(calculationTime) + "ms");
	}
	
	private void measurePathFindingTime()
	{
		// Warming up...
		Path temp = astar.findPath(map, mapPanel, true);
		
		int max = 20;
		double timeSum = 0.0;
		
		for(int i = 0; i < max; i++)
		{
			temp = astar.findPath(map, mapPanel, true);
			timeSum += temp.getCalculationTime();
		}
		
		setPathCalculationTime(timeSum/max);
	}
	
	private void findPath()
	{
		try
		{
			measurePathFindingTime();
			clearPath();
			
			Path path = astar.findPath(map, mapPanel);
			if(path != null && path.getNodes() != null)
			{
				mapPanel.renderPath(path.getNodes());
				this.setCost(path.getCost());
				this.setPathLength(path.getNodes().size());
			}
			else
			{
				// Alertar que não foi encontrado um caminho
				JOptionPane.showMessageDialog(this, "Nenhum caminho foi encontrado.", "Kek",
						JOptionPane.WARNING_MESSAGE);
			}
		} catch (Exception exception)
		{
			JOptionPane.showMessageDialog(this, "Erro ao buscar o caminho.", "Kek",
					JOptionPane.WARNING_MESSAGE);
		}
	}
	
	private void clearPath()
	{
		map.clearPath();
		mapPanel.repaint();
	}
	
	public void reset()
	{
		findPathButton.setEnabled(true);
		clearPathButton.setEnabled(false);
		costLabel.setText("-");
		pathLengthLabel.setText("-");
		pathCalculationTimeLabel.setText("-");
	}

	public ToolsSidebar(GameMap map, MapPanel mapPanel)
	{
		super();
		this.mapPanel = mapPanel;
		this.setLayout(new BoxLayout(this, BoxLayout.Y_AXIS));
		this.setBackground(Color.YELLOW);
	    Border b1 = BorderFactory.createTitledBorder("Ferramentas");
	    Border b2 = BorderFactory.createLineBorder(Color.BLUE, 2);
	    this.setBorder(BorderFactory.createCompoundBorder(b2, b1));
	    this.add(new JLabel("Tamanho do mapa carregado: "));
	    this.add(mapSizeLabel);
	    this.add(new JLabel("Custo: "));
	    this.add(costLabel);
	    this.add(new JLabel("Tamanho do caminho: "));
	    this.add(pathLengthLabel);
	    this.add(new JLabel("Tempo de Execução: "));
	    this.add(pathCalculationTimeLabel);
	    this.setSize(400, 600);
	    
	    findPathButton.addActionListener(new ActionListener()
	    {
	    	@Override
			public void actionPerformed(ActionEvent e)
			{
	    		clearPath();
	    		costLabel.setText("Calculando...");
	    		pathLengthLabel.setText("Calculando...");
	    		pathCalculationTimeLabel.setText("Calculando tempo médio...");
	    		clearPathButton.setEnabled(false);
	    		findPathButton.setEnabled(false);
	    		new Thread("EDTHeartbeat") {
	                @Override
	                public void run() {
	                	findPath();
	                	clearPathButton.setEnabled(true);
	                	findPathButton.setEnabled(true);
	                }
	    		}.start();
			}
	    });
	    this.add(findPathButton);
	    
	    clearPathButton.setEnabled(false);
	    clearPathButton.addActionListener(new ActionListener()
	    {
	    	@Override
			public void actionPerformed(ActionEvent e)
			{
	    		costLabel.setText("-");
	    		pathLengthLabel.setText("-");
	    		clearPathButton.setEnabled(false);
	    		new Thread("EDTHeartbeat") {
	                @Override
	                public void run() {
	                	reset();
	                	clearPath();
	                }
	    		}.start();
			}
	    });
	    this.add(clearPathButton);
	}
}
