package rendering;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;

public class DiceView extends View {

	private double x;
	private double y;
	private int value;
	
	public DiceView(double x, double y, int value)
	{
		this.x = x;
		this.y = y;
		this.value = value;
	}
	
	@Override
	public void render(Graphics2D g2d) {
		// TODO Auto-generated method stub
		g2d.setPaint(Color.WHITE);
		g2d.setFont(new Font("Arial",Font.BOLD, 14));
		g2d.drawString(String.format("%d", value), (float) x, (float) y);
	}

}