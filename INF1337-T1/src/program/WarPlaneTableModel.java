package program;

import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.ParseException;
import java.util.LinkedList;
import java.util.List;

import javax.swing.table.AbstractTableModel;

final class WarPlaneTableModel extends AbstractTableModel {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3692722593918208041L;
	
	private List<WarPlaneInfo> warPlaneFirepower;	
	
	private DecimalFormat df;
	
	private void configureDefaultWarPlaneFirepower()
	{
		warPlaneFirepower.add(new WarPlaneInfo("F-22 Raptor", 1.5));
		warPlaneFirepower.add(new WarPlaneInfo("F-35 Lightning II", 1.4));
		warPlaneFirepower.add(new WarPlaneInfo("T-50 PAK FA", 1.3));
		warPlaneFirepower.add(new WarPlaneInfo("Su-46", 1.2));
		warPlaneFirepower.add(new WarPlaneInfo("MiG-35", 1.1));
	}
	
	public WarPlaneTableModel(List<WarPlaneInfo> data)
	{
		super();
		
		df = new DecimalFormat("#.00"); 
		DecimalFormatSymbols symbols = new DecimalFormatSymbols();
		symbols.setDecimalSeparator(',');
		symbols.setGroupingSeparator(' ');
		df.setDecimalFormatSymbols(symbols);
		
		if(data == null)
		{
			warPlaneFirepower = new LinkedList<WarPlaneInfo>();
			configureDefaultWarPlaneFirepower();
		}
		else
		{
			warPlaneFirepower = data;
		}
	}
	
	private class WarPlaneInfo
	{
		public String name;
		public Double firepower;
		
		public WarPlaneInfo(String name, Double firepower)
		{
			this.name = name;
			this.firepower = firepower;
		}
	}
	
	@Override
	public String getColumnName(int index) {
	    if(index == 0)
	    {
	    	return "Caça-Avião";
	    }
	    
	    return "Poder de Fogo";
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
		return warPlaneFirepower.size();
	}
	
	@Override
	public Object getValueAt(int rowIndex, int columnIndex)
	{
		if(columnIndex == 0)
		{
			return warPlaneFirepower.get(rowIndex).name;
		}
		
		return df.format(warPlaneFirepower.get(rowIndex).firepower);
	}
	
	@Override
    public void setValueAt(Object value, int row, int col) {
		if(col==1)
		{
			try
			{
				warPlaneFirepower.get(row).firepower = df.parse((String) value).doubleValue();
			} catch (ParseException e)
			{
				e.printStackTrace();
			}
		}
		
        fireTableCellUpdated(row, col);
    }
}
