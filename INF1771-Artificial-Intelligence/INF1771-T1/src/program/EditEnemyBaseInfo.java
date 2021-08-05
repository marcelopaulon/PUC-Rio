package program;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.util.Hashtable;

import javax.swing.JDialog;
import javax.swing.JLabel;
import javax.swing.JScrollPane;
import javax.swing.JTable;

/**
 * Class that handles changes on the "Enemy Bases" button
 *
 */
public class EditEnemyBaseInfo extends JDialog
{
	/**
	 * Class Serialization version identifier
	 * @see <a href=http://blog.caelum.com.br/entendendo-o-serialversionuid/>Entendendo o serialVersionUID</a>
	 */
	private static final long serialVersionUID = -1593880878594207128L;
	
	private int defaultEnemyBaseDifficulty = 90;
	
	private JTable enemyDifficultyTable;
	private DifficultyTableModel enemyDifficultyModel = new DifficultyTableModel(null);
	
	/**
	 * Gets a specific enemy base's difficulty
	 * @param position Base's position
	 * @return value specified on the table for the corresponding base or,
	 * in case of null, returns default base difficulty value (90).
	 */
	public int getEnemyBaseDifficulty(int position)
	{
		Integer value = (Integer) enemyDifficultyModel.getValueAt(position - 1, 1);
		if(value != null)
		{
			return value;
		}
		
		return defaultEnemyBaseDifficulty;
	}
	
	/**
	 * Gets enemy bases table
	 * @return Hashtable containing enemy bases and their respective difficulties
	 */
	public Hashtable<Integer, Integer> getEnemyBaseList()
	{
		return enemyDifficultyModel.enemyBaseDifficulty;
	}
	
	/**
	 * Generates table visualization to be edited in Program.java
	 */
	private void setupDifficultyTable()
	{	    
		enemyDifficultyTable = new JTable(enemyDifficultyModel);
		
		JScrollPane scrollPane = new JScrollPane(enemyDifficultyTable);
		this.add(scrollPane);
	}
	
	/**
	 * EditEnemyBaseInfo constructor
	 * <p>Generates window containing the table's visualization</p>
	 * <p><b>EditEnemyBaseInfo:</b> Class that handles changes on the "Enemy Bases" button </p>
	 */
	public EditEnemyBaseInfo()
	{
		super();
		
		this.setTitle("Editar Bases Inimigas");
		this.setModal(true);
		this.setPreferredSize(new Dimension(350, 280));
		this.setResizable(false);
		
		setupDifficultyTable();
		this.add(new JLabel("Dificuldade padrão (bases nº > 11): 90"), BorderLayout.PAGE_END);

		
		this.pack();
	}
}
