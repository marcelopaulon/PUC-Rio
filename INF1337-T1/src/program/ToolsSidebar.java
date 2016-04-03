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
 * Painel superior contendo bot�es como "Encontrar Caminho" e "Limpar Caminho".
 *
 */
public class ToolsSidebar extends JPanel {
	private AStar astar;
	
	/**
	 * Identificador de vers�o de serializa��o de uma classe
	 * @see <a href=http://blog.caelum.com.br/entendendo-o-serialversionuid/>Entendendo o serialVersionUID</a>
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
	
	/**
	 * Construtor de ToolsSidebar
	 * <p><b>ToolsSidebar:</b> painel superior contendo bot�es como "Encontrar Caminho" e "Limpar Caminho".</p>
	 * @param map Mapa do qual ser�o tirados informa��es como o tamanho
	 * @param mapPanel Painel onde o mapa � renderizado
	 */
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
	
	/**
	 * Modifica o mapa ao qual o texto "Tamanho do mapa carregado" se refere
	 * e o atualiza. 
	 * @param map Novo mapa cujo tamanho sobreescrever� o tamanho anterior em
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
	 * Muda o tempo escrito abaixo de "Tempo de Execu��o:"
	 * @param calculationTime Novo tempo
	 */
	private void setPathCalculationTime(double calculationTime)
	{
		DecimalFormat df = new DecimalFormat("#.00"); 
		pathCalculationTimeLabel.setText(df.format(calculationTime) + "ms");
	}
	
	/**
	 * M�todo que calcula a mediana dos elemento de uma lista
	 * @param m Lista cujos elementos ter�o a mediana calculada 
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
	 * Calcula e sobreescreve o tempo de execu��o
	 */
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
	
	/**
	 * Calcula o caminho no mapa e mede seu tempo de execu��o
	 * @see AStar#findPath(GameMap, MapPanel)
	 */
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
				// Alertar que n�o foi encontrado um caminho
				JOptionPane.showMessageDialog(this, "Nenhum caminho foi encontrado.", "Kek",
						JOptionPane.WARNING_MESSAGE);
			}
		} catch (Exception exception)
		{
			JOptionPane.showMessageDialog(this, "Erro ao buscar o caminho.", "Kek",
					JOptionPane.WARNING_MESSAGE);
		}
	}
	
	/**
	 * Limpa a visualiza��o do caminho encontrado no mapa.
	 */
	private void clearPath()
	{
		map.clearPath();
		mapPanel.repaint();
	}
	
	/**
	 * Reinicia os elementos da ToolsSidebar, colocando-os
	 * no mesmo estado de quando o programa � iniciado
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
	 * TODO: Comentar. N�o entendi o que o m�todo faz. Comente seu c�digo, Marcelo. 
	 * @param c TODO: Comentar. N�o entendi o que o par�metro faz. Comente seu c�digo, Marcelo. 
	 */
	private void setLineBreakBefore(JLabel c)
	{
		setMargin(c,10,0,0,0);
	}
	
	/**
	 * TODO: Comentar. N�o entendi o que o m�todo faz. Comente seu c�digo, Marcelo. 
	 * @param c TODO: Comentar. N�o entendi o que o par�metro faz. Comente seu c�digo, Marcelo. 
	 */
	private void setLineBreakAfter(JLabel c)
	{
		setMargin(c,0,0,10,0);
	}
	
	/**
	 * TODO: Comentar. N�o entendi o que o m�todo faz. Comente seu c�digo, Marcelo. 
	 * @param c TODO: Comentar. N�o entendi o que o par�metro faz. Comente seu c�digo, Marcelo. 
	 * @param top TODO: Comentar. N�o entendi o que o par�metro faz. Comente seu c�digo, Marcelo.
	 * @param left TODO: Comentar. N�o entendi o que o par�metro faz. Comente seu c�digo, Marcelo.
	 * @param bottom TODO: Comentar. N�o entendi o que o par�metro faz. Comente seu c�digo, Marcelo.
	 * @param right TODO: Comentar. N�o entendi o que o par�metro faz. Comente seu c�digo, Marcelo.
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
	public void refreshWarPlanesEnergy()
	{
		airplaneEnergyPanel.removeAll();
    	warPlaneList.forEach((warPlane) -> airplaneEnergyPanel.add(new JLabel(warPlane.getName() + ": " + warPlane.getEnergy())));
    	airplaneEnergyPanel.repaint();
	}
	
	/**
	 * Gera o painel contendo a energia de cada nave
	 */
	private void setupAirplaneEnergyPanel()
	{
		this.add(new JLabel("Avi�es (pontos de energia): "));
		airplaneEnergyPanel = new JPanel();
	    airplaneEnergyPanel.setLayout(new BoxLayout(airplaneEnergyPanel, BoxLayout.Y_AXIS));
	    airplaneEnergyPanel.setBackground(Color.YELLOW);
	    refreshWarPlanesEnergy();
	    this.add(airplaneEnergyPanel);
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
	 * Gera os labels contendo os textos "Tamanho do Caminho:" e "Tempo de execu��o:" 
	 * e as informa��es dos mesmos
	 */
	private void setupPathDataLabels()
	{
		this.add(new JLabel("Tamanho do caminho: "));
	    setLineBreakAfter(pathLengthLabel);
	    this.add(pathLengthLabel);
	    
	    this.add(new JLabel("Tempo de execu��o: "));
	    setLineBreakAfter(pathCalculationTimeLabel);
	    this.add(pathCalculationTimeLabel);
	}
	
	/**
	 * Adiciona o listener ao bot�o "Encontrar Caminho" e define as a��es deste bot�o
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
	    		pathCalculationTimeLabel.setText("Calculando tempo m�dio...");
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
	 * Adiciona o listener ao bot�o "Limpar Caminho" e define as a��es deste bot�o
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
}
