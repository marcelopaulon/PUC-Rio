package program;

import java.util.Hashtable;

import javax.swing.table.AbstractTableModel;

/**
 * Table containing each enemy base's difficulty level
 * <p>AbstractTableModel's final extensions</p>
 * <p>Each base's number is currently referenced by battle number
 * and NOT by how far it is from the map's start point</p>
 *
 */
final class DifficultyTableModel extends AbstractTableModel {
	/**
	 * Class serialization version identifier
	 * @see <a href=http://blog.caelum.com.br/entendendo-o-serialversionuid/>Entendendo o serialVersionUID</a>
	 */
	private static final long serialVersionUID = 6296705113507672672L;
	
	/**
	 * Hashtable containing ID and difficulty for each enemy base
	 */
	public Hashtable<Integer, Integer> enemyBaseDifficulty;
	
	/**
	 * Loads default info into the table
	 */
	private void configureDefaultEnemyBaseDifficulty()
	{
		enemyBaseDifficulty.put(1, 60);
		enemyBaseDifficulty.put(2, 65);
		enemyBaseDifficulty.put(3, 70);
		enemyBaseDifficulty.put(4, 75);
		enemyBaseDifficulty.put(5, 80);
		enemyBaseDifficulty.put(6, 85);
		enemyBaseDifficulty.put(7, 90);
		enemyBaseDifficulty.put(8, 95);
		enemyBaseDifficulty.put(9, 100);
		enemyBaseDifficulty.put(10, 110);
		enemyBaseDifficulty.put(11, 120);
	}
	
	/**
	 * DifficultyTableModel constructor
	 * <p><b>DifficultyTableModel:</b> Table containing each enemy base's difficulty level</p>
	 * @param data to be loaded into the table
	 * In case the default data is desirable to be loaded, input "NULL"
	 */
	public DifficultyTableModel(Hashtable<Integer, Integer> data)
	{
		super();
		
		if(data == null)
		{
			enemyBaseDifficulty = new Hashtable<Integer, Integer>();
			configureDefaultEnemyBaseDifficulty();
		}
		else
		{
			enemyBaseDifficulty = data;
		}
	}
	
	@Override
	public String getColumnName(int index) {
	    if(index == 0)
	    {
	    	return "Ordem da base";
	    }
	    
	    return "Dificuldade";
	}
	
	@Override
	public boolean isCellEditable(int row, int column){  
		if(column == 0) 
		{
			return false;
		}
	    return true;
	}

	@Override
	public int getColumnCount()
	{
		return 2;
	}

	@Override
	public int getRowCount()
	{
		return enemyBaseDifficulty.size();
	}

	@Override
	public Object getValueAt(int rowIndex, int columnIndex)
	{
		if(columnIndex == 0)
		{
			return rowIndex + 1;
		}
		
		if(enemyBaseDifficulty.containsKey(rowIndex+1))
		{
			return enemyBaseDifficulty.get(rowIndex+1);
		}
		
		return "Erro";
	}
	
	@Override
    public void setValueAt(Object value, int row, int col) {
		try
		{
			int difficulty = Integer.parseInt((String) value);
			
			if(difficulty >= 0)
			{
		        if(enemyBaseDifficulty.containsKey(row+1))
		        {
		        	enemyBaseDifficulty.replace(row + 1, difficulty);
		        }
		        else
		        {
		        	enemyBaseDifficulty.put(enemyBaseDifficulty.size() + 1, difficulty);
		        }
			}
			
	        fireTableCellUpdated(row, col);
		}
		catch(Exception e)
		{
			return;
		}
    }
}