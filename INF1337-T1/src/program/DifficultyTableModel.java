package program;

import java.util.Hashtable;

import javax.swing.table.AbstractTableModel;

/**
 * Tabela contendo o nível de dificuldade de cada base inimiga
 * <p>Extensão final de AbstractTableModel</p>
 * <p>Número de cada base é atualmente referenciado pelo número da batalha 
 * e não pela distância do ponto de início do mapa</p>
 *
 */
final class DifficultyTableModel extends AbstractTableModel {
	/**
	 * Identificador de versão de serialização de uma classe
	 * @see <a href=http://blog.caelum.com.br/entendendo-o-serialversionuid/>Entendendo o serialVersionUID</a>
	 */
	private static final long serialVersionUID = 6296705113507672672L;
	
	/**
	 * Hashtable contendo id e dificuldade de cada base inimiga
	 */
	public Hashtable<Integer, Integer> enemyBaseDifficulty;
	
	/**
	 * Carrega as informações padrão na tabela
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
	 * Construtor de DifficultyTableModel
	 * <p><b>DifficultyTableModel:</b> tabela contendo o nível de dificuldade de cada base inimiga</p>
	 * @param data Dados a serem carregados na tabela. 
	 * Caso deseje carregar os dados padrão, coloque null neste campo.
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