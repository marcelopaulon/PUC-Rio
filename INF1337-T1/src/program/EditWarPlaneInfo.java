package program;

import java.awt.Dimension;
import java.util.List;

import javax.swing.JDialog;
import javax.swing.JScrollPane;
import javax.swing.JTable;

import program.WarPlaneTableModel.WarPlaneInfo;

public class EditWarPlaneInfo extends JDialog
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 6432336918764485679L;
	
	private JTable warPlaneTable;
	private WarPlaneTableModel warPlaneTableModel = new WarPlaneTableModel(null);
	
	public Double getWarPlaneFirepower(int position)
	{
		Double value = (Double) warPlaneTableModel.getValueAt(position - 1, 1);
		if(value != null)
		{
			return value;
		}
		
		return null;		
	}
	
	public List<WarPlaneInfo> getWarPlaneList()
	{
		return warPlaneTableModel.warPlaneFirepower;
	}
	
	private void setupWarPlaneTable()
	{	    
		warPlaneTable = new JTable(warPlaneTableModel);
		
		JScrollPane scrollPane = new JScrollPane(warPlaneTable);
		this.add(scrollPane);
	}

	public EditWarPlaneInfo()
	{
		super();
		this.setTitle("Editar Aviões");
		this.setModal(true);
		this.setPreferredSize(new Dimension(200, 200));
		this.setResizable(false);
		
		setupWarPlaneTable();
		
		this.pack();
	}
}
