package program;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.util.Hashtable;

import javax.swing.JDialog;
import javax.swing.JLabel;
import javax.swing.JScrollPane;
import javax.swing.JTable;

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
	
	public Hashtable<Integer, Integer> getEnemyBaseList()
	{
		return enemyDifficultyModel.enemyBaseDifficulty;
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
		this.setPreferredSize(new Dimension(350, 280));
		this.setResizable(false);
		
		setupDifficultyTable();
		this.add(new JLabel("Dificuldade padrão (bases nº > 11): 90"), BorderLayout.PAGE_END);

		
		this.pack();
	}
}
