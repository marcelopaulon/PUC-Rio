package program;

import java.awt.Dimension;

import javax.swing.JDialog;

public class EditEnemyBaseInfo extends JDialog
{
	public EditEnemyBaseInfo()
	{
		super();
		this.setTitle("Editar Bases Inimigas");
		this.setModal(true);
		this.setPreferredSize(new Dimension(200, 200));
		this.setResizable(false);
		this.pack();
	}
}
