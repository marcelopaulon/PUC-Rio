package program;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.util.Hashtable;

import javax.swing.JDialog;
import javax.swing.JLabel;
import javax.swing.JScrollPane;
import javax.swing.JTable;

/**
 * Classe que cuida das mudanças do botão "Bases Inimigas".
 *
 */
public class EditEnemyBaseInfo extends JDialog
{
	/**
	 * Identificador de versão de serialização de uma classe
	 * @see <a href=http://blog.caelum.com.br/entendendo-o-serialversionuid/>Entendendo o serialVersionUID</a>
	 */
	private static final long serialVersionUID = -1593880878594207128L;
	
	private int defaultEnemyBaseDifficulty = 90;
	
	private JTable enemyDifficultyTable;
	private DifficultyTableModel enemyDifficultyModel = new DifficultyTableModel(null);
	
	/**
	 * Pega a dificuldade de determinada base inimiga.
	 * @param position Número da base
	 * @return Valor especificado na tabela para a base correspondente ou,
	 * caso este seja null, retorna o valor padrão para dificuldade de base (90).
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
	 * Pega a tabela de bases inimigas
	 * @return Hashtable contendo as bases inimigas e suas dificuldades.
	 */
	public Hashtable<Integer, Integer> getEnemyBaseList()
	{
		return enemyDifficultyModel.enemyBaseDifficulty;
	}
	
	/**
	 * Gera a visualização da tabela que será editada no programa
	 */
	private void setupDifficultyTable()
	{	    
		enemyDifficultyTable = new JTable(enemyDifficultyModel);
		
		JScrollPane scrollPane = new JScrollPane(enemyDifficultyTable);
		this.add(scrollPane);
	}
	
	/**
	 * Construtor de EditEnemyBaseInfo
	 * <p>Gera a janela contendo a visualização da tabela no programa</p>
	 * <p><b>EditEnemyBaseInfo:</b> classe que cuida das mudanças do botão "Bases Inimigas".</p>
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
