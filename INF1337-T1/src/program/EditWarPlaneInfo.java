package program;

import java.awt.Dimension;

import javax.swing.JDialog;

public class EditWarPlaneInfo extends JDialog
{
	public EditWarPlaneInfo()
	{
		super();
		this.setTitle("Editar Aviões");
		this.setModal(true);
		this.setPreferredSize(new Dimension(200, 200));
		this.setResizable(false);
		this.pack();
	}
}
