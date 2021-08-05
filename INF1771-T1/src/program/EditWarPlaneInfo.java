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
 * Class that handles changes in "Aviões" button
 *
 */
public class EditWarPlaneInfo extends JDialog
{
	/**
	 * Class serialization version identifier
	 * @see <a href=http://blog.caelum.com.br/entendendo-o-serialversionuid/>Entendendo o serialVersionUID</a>
	 */
	private static final long serialVersionUID = 6432336918764485679L;
	
	private JTable warPlaneTable;
	private WarPlaneTableModel warPlaneTableModel = new WarPlaneTableModel(null);
	
	/**
	 * Gets a certain plane's firepower
	 * @param position Plane's position on table
	 * @return Value specified for the correspondent base or,
	 * in case it's null, returns default value to base difficulty (90).
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
	 * Gets list of planes
	 * @return List containing name and firepower of each plane
	 */
	public List<WarPlaneInfo> getWarPlaneList()
	{
		return warPlaneTableModel.warPlaneFirepower;
	}
	
	/**
	 * Generates a visualization of the table to be edited by program
	 */
	private void setupWarPlaneTable()
	{	    
		warPlaneTable = new JTable(warPlaneTableModel);
		
		JScrollPane scrollPane = new JScrollPane(warPlaneTable);
		this.add(scrollPane);
	}

	/**
	 * EditWarPlaneInfo constructor
	 * <p>Generates window containing the table's visualization</p>
	 * <p><b>EditWarPlaneInfo:</b> Class that handles changes in "Aviões" button</p>
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
			  Program.getInstance().getPlanesPanel().Refresh(false); //Atualiza painel de aviões
		  }
		});
	}
}
