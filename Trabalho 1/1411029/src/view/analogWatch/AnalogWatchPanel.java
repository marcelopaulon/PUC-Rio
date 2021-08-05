package view.analogWatch;

import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.Shape;
import java.awt.geom.AffineTransform;
import java.awt.geom.Line2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.swing.JPanel;

public class AnalogWatchPanel extends JPanel {
	
	/**
	 *  Class UID
	 */
	private static final long serialVersionUID = 6682906192619529947L;
	
	private Shape hoursLine;
	private Shape minutesLine;
	private Shape secondsLine;
	
	private double imageSize = 450.0;
	private double centerX = imageSize/2.0;
	private double centerY = imageSize/2.0;
	
	private double hoursX, hoursY;
	private double minutesX, minutesY;
	private double secondsX, secondsY;

    BufferedImage image = null;
    
	public AnalogWatchPanel()
	{
		super();
		this.setSize((int)imageSize, (int)imageSize);
		
		String path = "analog.jpg";
	    File file = new File(path);
	    	    
		try {
			image = ImageIO.read(file);
		} catch (IOException e) {
			e.printStackTrace();
		} 
		
		hoursX = centerX;
		hoursY = centerY - imageSize/4.0;
		
		new Line2D.Double(centerX, hoursX, centerY, hoursY);
		
		minutesX = centerX;
		minutesY = centerY - imageSize/3.0;
		
		new Line2D.Double(centerX, minutesX, centerY, minutesY);
		
		secondsX = centerX;
		secondsY = centerY - imageSize/2.5;
		
		new Line2D.Double(centerX, secondsX, centerY, secondsY);
		
		setTime(0, 0, 0);
	}
	
	public void setTime(int hours, int minutes, int seconds)
	{
		AffineTransform atH = 
		        AffineTransform.getRotateInstance(
		            Math.toRadians(30 * hours), centerX, centerY);

		hoursLine = new Line2D.Double(centerX, hoursX, centerY, hoursY);
		hoursLine = atH.createTransformedShape(hoursLine);
				
		AffineTransform atM = 
		        AffineTransform.getRotateInstance(
		            Math.toRadians(6 * minutes), centerX, centerY);

		minutesLine = new Line2D.Double(centerX, minutesX, centerY, minutesY);
		minutesLine = atM.createTransformedShape(minutesLine);
				
		AffineTransform atS = 
		        AffineTransform.getRotateInstance(
		            Math.toRadians(6 * seconds), centerX, centerY);
		
		secondsLine = new Line2D.Double(centerX, secondsX, centerY, secondsY);
		secondsLine = atS.createTransformedShape(secondsLine);
		
		this.repaint();
	}
	
	private void drawPin(Graphics2D g2d)
	{
		g2d.setStroke(new BasicStroke(1));
	    g2d.setColor(Color.BLACK);
	    g2d.fillOval((int)centerX - 9, (int)centerY - 9, 18, 18);
	}
	
	protected void paintComponent(Graphics g) {
	    super.paintComponent(g);
	    
	    Graphics2D g2d = (Graphics2D) g;
	    
	    RenderingHints rh = new RenderingHints(
	             RenderingHints.KEY_TEXT_ANTIALIASING,
	             RenderingHints.VALUE_TEXT_ANTIALIAS_ON);
	    g2d.setRenderingHints(rh);
	    
	    g2d.drawImage(image, null, 0, 0);
	    
	    g2d.setStroke(new BasicStroke(5));
	    g2d.setColor(Color.RED);
	    g2d.draw(hoursLine);
	    
	    g2d.setStroke(new BasicStroke(3));
	    g2d.setColor(Color.BLUE);
	    g2d.draw(minutesLine);
	    
	    g2d.setStroke(new BasicStroke(2));
	    g2d.setColor(Color.YELLOW);
	    g2d.draw(secondsLine);
	    
	    drawPin(g2d);
  }
}
