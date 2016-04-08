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

/**
 * Painel superior contendo botões como "Encontrar Caminho" e "Limpar Caminho".
 *
 */
public class ToolsSidebar extends JPanel {
	private AStar astar;
	
	/**
	 * Identificador de versão de serialização de uma classe
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
	private Hashtable<Integer, Integer> enemyBaseDifficulty;
	
	/**
	 * Construtor de ToolsSidebar
	 * <p><b>ToolsSidebar:</b> painel superior contendo botões como "Encontrar Caminho" e "Limpar Caminho".</p>
	 * @param map Mapa do qual serão tirados informações como o tamanho
	 * @param mapPanel Painel onde o mapa é renderizado
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
	    enemyBaseDifficulty = Program.getInstance().getEnemyBaseList();
	    
	    astar = new AStar();
	    
    	setupCostLabel();
	    setupPathDataLabels();
	    
	    this.setSize(400, 600);
	    
	    setupFindPathButton();
	    setupClearPathButton();
	}
	
	/**
	 * Modifica o mapa ao qual o texto "Tamanho do mapa carregado" se refere
	 * e o atualiza. 
	 * @param map Novo mapa cujo tamanho sobreescreverá o tamanho anterior em
	 * "Tamanho do mapa carregado"
	 */
	public void setMap(GameMap map)
	{
		this.map = map;
		mapSizeLabel.setText(map.getNRows() + "x" + map.getNColumns());
	}
	
	/**
	 * Muda o custo escrito embaixo do texto "Custo:"
	 * @param cost Novo custo a ser escrito
	 */
	public void setCost(double cost)
	{
		DecimalFormat df = new DecimalFormat("#.00"); 
		costLabel.setText(df.format(cost));
	}
	
	/**
	 * Muda o tamanho do caminho escrito embaixo do texto "Tamanho do caminho:"
	 * @param length Novo tamanho do caminho
	 */
	private void setPathLength(int length)
	{
		pathLengthLabel.setText(Integer.toString(length));
	}
	
	/**
	 * Muda o tempo escrito abaixo de "Tempo de Execução:"
	 * @param calculationTime Novo tempo
	 */
	private void setPathCalculationTime(double calculationTime)
	{
		DecimalFormat df = new DecimalFormat("#.00"); 
		pathCalculationTimeLabel.setText(df.format(calculationTime) + "ms");
	}
	
	/**
	 * Método que calcula a mediana dos elemento de uma lista
	 * @param m Lista cujos elementos terão a mediana calculada 
	 * @return Mediana dos elementos de m
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
	 * Calcula e sobreescreve o tempo de execução
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
	 * Calcula o caminho no mapa e mede seu tempo de execução
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
	 * Limpa a visualização do caminho encontrado no mapa.
	 */
	private void clearPath()
	{
		map.clearPath();
		mapPanel.repaint();
	}
	
	/**
	 * Reinicia os elementos da ToolsSidebar, colocando-os
	 * no mesmo estado de quando o programa é iniciado
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
	 * Atualiza o valor da energia de cada nave
	 */
	public void refreshWarPlanesEnergy(List<WarPlaneInfo> info)
	{
		planesPanel.UpdateHealthBars(info);
	}
	
	/**
	 * Gera o label contendo o texto "Custo:" e o custo do caminho
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
	 * Gera os labels contendo os textos "Tamanho do Caminho:" e "Tempo de execução:" 
	 * e as informações dos mesmos
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
	 * Adiciona o listener ao botão "Encontrar Caminho" e define as ações deste botão
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
	 * Adiciona o listener ao botão "Limpar Caminho" e define as ações deste botão
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
