package program;

import java.awt.Dimension;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.util.List;

import javax.swing.JDialog;
import javax.swing.JScrollPane;
import javax.swing.JTable;

import pathfinding.WarPlaneInfo;

/**
 * Classe que cuida das mudanças do botão "Aviões".
 *
 */
public class EditWarPlaneInfo extends JDialog
{
	/**
	 * Identificador de versão de serialização de uma classe
	 * @see <a href=http://blog.caelum.com.br/entendendo-o-serialversionuid/>Entendendo o serialVersionUID</a>
	 */
	private static final long serialVersionUID = 6432336918764485679L;
	
	private JTable warPlaneTable;
	private WarPlaneTableModel warPlaneTableModel = new WarPlaneTableModel(null);
	
	/**
	 * Pega o poder de fogo de determinada nave.
	 * @param position Posição da nave na tabela
	 * @return Valor especificado na tabela para a base correspondente ou,
	 * caso este seja null, retorna o valor padrão para dificuldade de base (90).
	 */
	public Double getWarPlaneFirepower(int position)
	{
		Double value = (Double) warPlaneTableModel.getValueAt(position - 1, 1);
		if(value != null)
		{
			return value;
		}
		
		return null;		
	}
	
	
	/**
	 * Pega a lista de naves
	 * @return Lista contendo nome e poder de fogo das naves
	 */
	public List<WarPlaneInfo> getWarPlaneList()
	{
		return warPlaneTableModel.warPlaneFirepower;
	}
	
	/**
	 * Gera a visualização da tabela que será editada no programa
	 */
	private void setupWarPlaneTable()
	{	    
		warPlaneTable = new JTable(warPlaneTableModel);
		
		JScrollPane scrollPane = new JScrollPane(warPlaneTable);
		this.add(scrollPane);
	}

	/**
	 * Construtor de EditWarPlaneInfo
	 * <p>Gera a janela contendo a visualização da tabela no programa</p>
	 * <p><b>EditWarPlaneInfo:</b> classe que cuida das mudanças do botão "Aviões".</p>
	 */
	public EditWarPlaneInfo()
	{
		super();
		this.setTitle("Editar Aviões");
		this.setModal(true);
		this.setPreferredSize(new Dimension(200, 200));
		this.setResizable(false);
		
		setupWarPlaneTable();
		
		this.pack();
		
		this.addWindowListener(new WindowAdapter() {
		  public void windowClosing(WindowEvent e) {
			  Program.getInstance().getPlanesPanel().Refresh(); //Atualiza painel de aviões
		  }
		});
	}
}
