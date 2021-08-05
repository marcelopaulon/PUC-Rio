package program;

import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
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

/**
 * Top panels containing buttons like "Encontrar Caminho" and "Limpar Caminho".
 *
 */
public class ToolsSidebar extends JPanel {
	private AStar astar;
	
	/**
	 * Class serialization version identifier
	 * @see <a href=http://blog.caelum.com.br/entendendo-o-serialversionuid/>Entendendo o serialVersionUID</a>
	 */
	private static final long serialVersionUID = 3548211981279388502L;
	
	private GameMap map;
	private MapPanel mapPanel;
	
	private PlanesPanel planesPanel;
	
    private JButton findPathButton = new JButton("Encontrar caminho");
    private JButton clearPathButton = new JButton("Limpar caminho");
	
	private JLabel mapSizeLabel = new JLabel("-");
	private JLabel costLabel = new JLabel("-");
	private JLabel pathLengthLabel = new JLabel("-");
	private JLabel pathCalculationTimeLabel = new JLabel("-");
		
	private List<WarPlaneInfo> warPlaneList;
	
	/**
	 * ToolsSidebar constructor
	 * <p><b>ToolsSidebar:</b> Top panels containing buttons like "Encontrar Caminho" and "Limpar Caminho".</p>
	 * @param map from which the info will be surveyed (such as size)
	 * @param mapPanel where the map is renderized
	 */
	public ToolsSidebar(GameMap map, MapPanel mapPanel, PlanesPanel planesPanel)
	{
		super();
		this.mapPanel = mapPanel;
		this.planesPanel = planesPanel;
		this.setLayout(new BoxLayout(this, BoxLayout.Y_AXIS));
		this.setBackground(Color.YELLOW);
	    Border b1 = BorderFactory.createTitledBorder("Ferramentas");
	    Border b2 = BorderFactory.createLineBorder(Color.BLUE, 2);
	    this.setBorder(BorderFactory.createCompoundBorder(b2, b1));
	    
	    this.add(new JLabel("Tamanho do mapa carregado: "));	    
	    this.add(mapSizeLabel);
	    
	    warPlaneList = Program.getInstance().getWarPlaneList();
	    
	    astar = new AStar();
	    
    	setupCostLabel();
	    setupPathDataLabels();
	    
	    this.setSize(400, 600);
	    
	    setupFindPathButton();
	    setupClearPathButton();
	}
	
	/**
	 * Sets the map which the "Tamanho do mapa carregado" text refers to
	 * and refreshes it. 
	 * @param map New map whose size overwrites the previous size in
	 * "Tamanho do mapa carregado"
	 */
	public void setMap(GameMap map)
	{
		this.map = map;
		mapSizeLabel.setText(map.getNRows() + "x" + map.getNColumns());
	}
	
	/**
	 * Sets the cost written below "Custo:" text
	 * @param cost New cost to be written
	 */
	public void setCost(double cost)
	{
		DecimalFormat df = new DecimalFormat("#.00"); 
		costLabel.setText(df.format(cost));
	}
	
	/**
	 * Sets the path length written below "Tamanho do caminho:" text
	 * @param length New path length
	 */
	private void setPathLength(int length)
	{
		pathLengthLabel.setText(Integer.toString(length));
	}
	
	/**
	 * Sets calculatoin time written below "Tempo de Execução:" text
	 * @param calculationTime New calculation time
	 */
	private void setPathCalculationTime(double calculationTime)
	{
		DecimalFormat df = new DecimalFormat("#.00"); 
		pathCalculationTimeLabel.setText(df.format(calculationTime) + "ms");
	}
	
	/**
	 * Method that finds the list elements' median
	 * @param m List whose elements will have their median found
	 * @return Median of m's elements
	 */
	private Double median(List<Double> m) {
	    int middle = m.size()/2;
	    if (m.size()%2 == 1) {
	        return m.get(middle);
	    } else {
	        return (m.get(middle-1) + m.get(middle)) / 2;
	    }
	}
	
	/**
	 * Measures and overwrites execution time
	 */
	private void measurePathFindingTime()
	{
		// Warming up...
		Path temp = astar.findPath(map, mapPanel, planesPanel, true);
		
		int max = 20;
		List<Double> times = new ArrayList<Double>();
		
		for(int i = 0; i < max; i++)
		{
			temp = astar.findPath(map, mapPanel, planesPanel, true);
			times.add(temp.getCalculationTime());
		}
		
		Collections.sort(times);
		
		setPathCalculationTime(median(times));
	}
	
	/**
	 * Finds map path and measures its execution time
	 * @see AStar#findPath(GameMap, MapPanel)
	 */
	private void findPath()
	{
		try
		{
			measurePathFindingTime();
			clearPath();
			
			Path path = astar.findPath(map, mapPanel, planesPanel, false);
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
			
			refreshWarPlanesEnergy(path.getNodes().get(path.getNodes().size() - 1).getWarplaneInfo());
		} catch (Exception e)
		{
			e.printStackTrace();
			JOptionPane.showMessageDialog(this, "Erro ao buscar o caminho.", "Kek",
					JOptionPane.WARNING_MESSAGE);
		}
	}
	
	/**
	 * Clears found map's path's visualization
	 */
	private void clearPath()
	{
		map.clearPath();
		mapPanel.repaint();
	}
	
	/**
	 * Reset ToolsSidebar's elements, putting them
	 * on the same state in which the program was initiated on
	 */
	public void reset()
	{
		findPathButton.setEnabled(true);
		clearPathButton.setEnabled(false);
		costLabel.setText("-");
		pathLengthLabel.setText("-");
		pathCalculationTimeLabel.setText("-");
	}
	
	/**
	 * Adds a line break before a component. 
	 * @param c Component. 
	 */
	private void setLineBreakBefore(JLabel c)
	{
		setMargin(c,10,0,0,0);
	}
	
	/**
	 * Adds a line break after a component. 
	 * @param c Component. 
	 */
	private void setLineBreakAfter(JLabel c)
	{
		setMargin(c,0,0,10,0);
	}
	
	/**
	 * Sets the margins of a component. 
	 * @param c Component. 
	 * @param top Top margin.
	 * @param left Left margin.
	 * @param bottom Bottom margin.
	 * @param right Right margin.
	 */
	private void setMargin(JLabel c, int top, int left, int bottom, int right)
	{
		Border border = c.getBorder();
		Border margin = new EmptyBorder(top, left, bottom, right);
		c.setBorder(new CompoundBorder(border, margin));
	}
	
	/**
	 * Refreshes each plane's energy
	 */
	public void refreshWarPlanesEnergy(List<WarPlaneInfo> info)
	{
		planesPanel.UpdateHealthBars(info);
	}
	
	/**
	 * Generates label containing the "Custo:" text and the path's cost
	 */
	private void setupCostLabel()
	{
		JLabel costTitleLabel = new JLabel("Custo: ");
    	setLineBreakBefore(costTitleLabel);
	    this.add(costTitleLabel);
	    setLineBreakAfter(costLabel);
	    this.add(costLabel);
	}
	
	/**
	 * Generates label containing the texts "Tamanho do Caminho:" & "Tempo de execução:" 
	 * and each text's info.
	 */
	private void setupPathDataLabels()
	{
		this.add(new JLabel("Tamanho do caminho: "));
	    setLineBreakAfter(pathLengthLabel);
	    this.add(pathLengthLabel);
	    
	    this.add(new JLabel("Tempo de execução: "));
	    setLineBreakAfter(pathCalculationTimeLabel);
	    this.add(pathCalculationTimeLabel);
	}
	
	/**
	 * Adds listener to "Encontrar Caminho" button and defines button's action
	 * @see ToolsSidebar#findPath()
	 */
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

	/**
	 * Adds listener to "Limpar Caminho" button and defines button's action
	 * @see ToolsSidebar#clearPath()
	 */
	private void setupClearPathButton()
	{
		clearPathButton.setEnabled(false);
	    clearPathButton.addActionListener(new ActionListener()
	    {
	    	@Override
			public void actionPerformed(ActionEvent e)
			{
	    		warPlaneList.forEach((warplane) -> warplane.resetEnergy());
	    		refreshWarPlanesEnergy(warPlaneList);
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
}
