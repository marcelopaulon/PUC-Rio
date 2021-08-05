package program;

import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.ParseException;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

import javax.swing.table.AbstractTableModel;

import pathfinding.WarPlaneInfo;

/**
 * Table containing each plane's info (name & firepower)
 * <p>AbstractTableModel's final extension</p>
 *
 */
final class WarPlaneTableModel extends AbstractTableModel {

	/**
	 * Class serialization version identifier
	 * @see <a href=http://blog.caelum.com.br/entendendo-o-serialversionuid/>Entendendo o serialVersionUID</a>
	 */
	private static final long serialVersionUID = 3692722593918208041L;
	
	/**
	 * List containing name and firepower for each base plane
	 */
	public List<WarPlaneInfo> warPlaneFirepower;	
	
	private DecimalFormat df;
	
	/**
	 * Loads default info on table
	 */
	private void configureDefaultWarPlaneFirepower()
	{
		warPlaneFirepower.add(new WarPlaneInfo("F-22 Raptor", 1.5));
		warPlaneFirepower.add(new WarPlaneInfo("F-35 Lightning II", 1.4));
		warPlaneFirepower.add(new WarPlaneInfo("T-50 PAK FA", 1.3));
		warPlaneFirepower.add(new WarPlaneInfo("Su-46", 1.2));
		warPlaneFirepower.add(new WarPlaneInfo("MiG-35", 1.1));
	}
	
	/**
	 * WarPlaneTableModel constructor
	 * <p><b>WarPlaneTableModel:</b> Table containing each plane's info (name & firepower)</p>
	 * @param data to be load into the table. 
	 * In case the desired loading parameters are the default ones, input "NULL" in param.
	 */
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
			return warPlaneFirepower.get(rowIndex).getName();
		}
		
		return df.format(warPlaneFirepower.get(rowIndex).getFirepower());
	}
	
	@Override
    public void setValueAt(Object value, int row, int col) {
		if(col==1)
		{
			try
			{
				Double firepower = df.parse((String) value).doubleValue();
				if(firepower >= 0.01)
				{
					warPlaneFirepower.get(row).setFirepower(firepower);
					Collections.sort(warPlaneFirepower, new Comparator<WarPlaneInfo>() {
					    @Override
					    public int compare(WarPlaneInfo w1, WarPlaneInfo w2) {
					        return Double.compare(w2.getFirepower(), w1.getFirepower());
					    }
					});

					fireTableDataChanged();
					Program.getInstance().getPlanesPanel().Refresh(true); //Atualiza painel de aviões
				}
			} catch (ParseException e)
			{
				e.printStackTrace();
			}
		}
    }
}
