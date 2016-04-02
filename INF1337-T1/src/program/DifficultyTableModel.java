package program;

import java.util.Hashtable;

import javax.swing.table.AbstractTableModel;

final class DifficultyTableModel extends AbstractTableModel {
	/**
	 * 
	 */
	private static final long serialVersionUID = 6296705113507672672L;
	
	public Hashtable<Integer, Integer> enemyBaseDifficulty;
	
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
        if(enemyBaseDifficulty.containsKey(row+1))
        {
        	enemyBaseDifficulty.replace(row + 1, Integer.parseInt((String) value));
        }
        else
        {
        	enemyBaseDifficulty.put(enemyBaseDifficulty.size() + 1, Integer.parseInt((String) value));
        }
        
        fireTableCellUpdated(row, col);
    }
}