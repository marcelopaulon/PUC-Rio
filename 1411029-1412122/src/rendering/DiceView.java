package rendering;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.image.BufferedImage;

import gfx.DiceAssets;


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
		
		BufferedImage image = DiceAssets.diceRoll;
		
		switch(value)
		{
			case 1:
				image = DiceAssets.one;
				break;
			case 2:
				image = DiceAssets.two;
				break;
			case 3:
				image = DiceAssets.three;
				break;
			case 4:
				image = DiceAssets.four;
				break;
			case 5:
				image = DiceAssets.five;
				break;
			case 6:
				image = DiceAssets.six;
				break;
		}
		
		
	    int width = image.getWidth();
	    int height = image.getHeight();

	    double scale = 0.2;
	    int w = (int) (scale * width);
	    int h = (int) (scale * height);
	    
	    // explicitly specify width (w) and height (h)
	    g2d.drawImage(image.getScaledInstance(w, h, Image.SCALE_SMOOTH), (int) x, (int) y, (int) w, (int) h, null);
	    
	}

}