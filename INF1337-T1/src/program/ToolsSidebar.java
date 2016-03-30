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
	
	private JLabel mapSizeLabel = new JLabel("-");
	private JLabel costLabel = new JLabel("-");
	private JLabel pathLengthLabel = new JLabel("-");
	
	public void setMap(GameMap map)
	{
		this.map = map;
		mapSizeLabel.setText(map.getNRows() + "x" + map.getNColumns());
	}
	
	private void setCost(double cost)
	{
		DecimalFormat df = new DecimalFormat("#.00"); 
		costLabel.setText(df.format(cost));
	}
	
	private void setPathLength(int length)
	{
		pathLengthLabel.setText(Integer.toString(length));
	}
	
	private void findPath()
	{
		try
		{
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
	    this.setSize(400, 600);
	    
	    JButton findPathButton = new JButton("Encontrar caminho");
	    findPathButton.addActionListener(new ActionListener()
	    {
	    	@Override
			public void actionPerformed(ActionEvent e)
			{
	    		costLabel.setText("Calculando...");
	    		pathLengthLabel.setText("Calculando...");
	    		new Thread("EDTHeartbeat") {
	                @Override
	                public void run() {
	                	findPath();
	                }
	    		}.start();
			}
	    });
	    this.add(findPathButton);
	    
	    JButton clearPathButton = new JButton("Limpar caminho");
	    clearPathButton.addActionListener(new ActionListener()
	    {
	    	@Override
			public void actionPerformed(ActionEvent e)
			{
	    		costLabel.setText("-");
	    		pathLengthLabel.setText("-");
	    		new Thread("EDTHeartbeat") {
	                @Override
	                public void run() {
	                	clearPath();
	                }
	    		}.start();
			}
	    });
	    this.add(clearPathButton);
	}
}
