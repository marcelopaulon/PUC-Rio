package program;

import java.awt.Dimension;
import java.util.Hashtable;

import javax.swing.JDialog;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.table.AbstractTableModel;

public class EditEnemyBaseInfo extends JDialog
{
	/**
	 * 
	 */
	private static final long serialVersionUID = -1593880878594207128L;
	
	private int defaultEnemyBaseDifficulty = 90;
	
	private JTable enemyDifficultyTable;
	private DifficultyTableModel enemyDifficultyModel = new DifficultyTableModel(null);
	
	public int getEnemyBaseDifficulty(int position)
	{
		Integer value = (Integer) enemyDifficultyModel.getValueAt(position - 1, 1);
		if(value != null)
		{
			return value;
		}
		
		return defaultEnemyBaseDifficulty;
	}
	
	private void setupDifficultyTable()
	{	    
		enemyDifficultyTable = new JTable(enemyDifficultyModel);
		
		JScrollPane scrollPane = new JScrollPane(enemyDifficultyTable);
		this.add(scrollPane);
	}
	
	public EditEnemyBaseInfo()
	{
		super();
		
		this.setTitle("Editar Bases Inimigas");
		this.setModal(true);
		this.setPreferredSize(new Dimension(200, 200));
		this.setResizable(false);
		
		setupDifficultyTable();
		
		this.pack();
	}
}
