package program;

import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Hashtable;
import java.util.List;

import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.border.Border;
import javax.swing.border.CompoundBorder;
import javax.swing.border.EmptyBorder;

import pathfinding.AStar;
import pathfinding.Path;
import pathfinding.WarPlaneInfo;
import map.GameMap;
import map.MapPanel;

public class ToolsSidebar extends JPanel {
	private AStar astar;
	
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
	
	private JPanel airplaneEnergyPanel;
	
	private List<WarPlaneInfo> warPlaneList;
	private Hashtable<Integer, Integer> enemyBaseDifficulty;
	
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
	
	private Double median(List<Double> m) {
	    int middle = m.size()/2;
	    if (m.size()%2 == 1) {
	        return m.get(middle);
	    } else {
	        return (m.get(middle-1) + m.get(middle)) / 2;
	    }
	}
	
	private void measurePathFindingTime()
	{
		// Warming up...
		Path temp = astar.findPath(map, mapPanel, true);
		
		int max = 20;
		List<Double> times = new ArrayList<Double>();
		
		for(int i = 0; i < max; i++)
		{
			temp = astar.findPath(map, mapPanel, true);
			times.add(temp.getCalculationTime());
		}
		
		Collections.sort(times);
		
		setPathCalculationTime(median(times));
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
	
	private void setLineBreakBefore(JLabel c)
	{
		setMargin(c,10,0,0,0);
	}
	
	private void setLineBreakAfter(JLabel c)
	{
		setMargin(c,0,0,10,0);
	}
	
	private void setMargin(JLabel c, int top, int left, int bottom, int right)
	{
		Border border = c.getBorder();
		Border margin = new EmptyBorder(top, left, bottom, right);
		c.setBorder(new CompoundBorder(border, margin));
	}
	
	public void refreshWarPlanesEnergy()
	{
		airplaneEnergyPanel.removeAll();
    	warPlaneList.forEach((warPlane) -> airplaneEnergyPanel.add(new JLabel(warPlane.getName() + ": " + warPlane.getEnergy())));
    	airplaneEnergyPanel.repaint();
	}
	
	private void setupAirplaneEnergyPanel()
	{
		this.add(new JLabel("Aviões (pontos de energia): "));
		airplaneEnergyPanel = new JPanel();
	    airplaneEnergyPanel.setLayout(new BoxLayout(airplaneEnergyPanel, BoxLayout.Y_AXIS));
	    airplaneEnergyPanel.setBackground(Color.YELLOW);
	    refreshWarPlanesEnergy();
	    this.add(airplaneEnergyPanel);
	}
	
	private void setupCostLabel()
	{
		JLabel costTitleLabel = new JLabel("Custo: ");
    	setLineBreakBefore(costTitleLabel);
	    this.add(costTitleLabel);
	    setLineBreakAfter(costLabel);
	    this.add(costLabel);
	}
	
	private void setupPathDataLabels()
	{
		this.add(new JLabel("Tamanho do caminho: "));
	    setLineBreakAfter(pathLengthLabel);
	    this.add(pathLengthLabel);
	    
	    this.add(new JLabel("Tempo de Execução: "));
	    setLineBreakAfter(pathCalculationTimeLabel);
	    this.add(pathCalculationTimeLabel);
	}
	
	private void setupFindPathButton()
	{
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
	    		new Thread("FindPath") {
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
	}
	
	private void setupClearPathButton()
	{
		clearPathButton.setEnabled(false);
	    clearPathButton.addActionListener(new ActionListener()
	    {
	    	@Override
			public void actionPerformed(ActionEvent e)
			{
	    		warPlaneList.forEach((warplane) -> warplane.setEnergy(5));
	    		refreshWarPlanesEnergy();
	    		costLabel.setText("-");
	    		pathLengthLabel.setText("-");
	    		clearPathButton.setEnabled(false);
	    		new Thread("ClearPath") {
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
	    setLineBreakAfter(mapSizeLabel);
	    
	    this.add(mapSizeLabel);
	    
	    warPlaneList = Program.getInstance().getWarPlaneList();
	    enemyBaseDifficulty = Program.getInstance().getEnemyBaseList();
	    
	    astar = new AStar(warPlaneList, enemyBaseDifficulty);
	    
	    setupAirplaneEnergyPanel();
    	setupCostLabel();
	    setupPathDataLabels();
	    
	    this.setSize(400, 600);
	    
	    setupFindPathButton();
	    setupClearPathButton();
	}
}
