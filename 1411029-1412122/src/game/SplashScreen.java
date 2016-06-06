package game;

import java.awt.BorderLayout;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.URL;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

public class SplashScreen extends JFrame
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 2211633856588410827L;

	public SplashScreen()
	{
		super();
		setUndecorated(true);
		create();
	}

	public void create()
	{
		BufferedImage image = null;

		try
		{
			image = ImageIO.read(new File("res/splash.png"));
		} catch (IOException e)
		{
			Notifications.getInstance().notifyError("Erro ao carregar splash screen");
			e.printStackTrace();
		}

		JPanel panel = new JPanel();

		JLabel label = new JLabel(new ImageIcon(image));

		URL url = Program.class.getResource("/gfx/playsm.gif");
		ImageIcon imageIcon = new ImageIcon(url);
		JLabel playLabel = new JLabel(imageIcon);

		panel.add(label);

		this.setSize(600, 600);

		this.setContentPane(label);

		JPanel glassPane = (JPanel) this.getGlassPane();
		glassPane.setLayout(new BorderLayout());
		glassPane.add(playLabel, BorderLayout.PAGE_END);
		this.setGlassPane(glassPane);
		glassPane.setVisible(true);
		this.pack();
		this.setLocationRelativeTo(null);

		this.addMouseListener(new SplashScreenMouseListener(Thread.currentThread()));
		this.addKeyListener(new SplashScreenKeyListener(Thread.currentThread()));

		this.setVisible(true);

		try
		{
			Thread.sleep(20000);
		} catch (InterruptedException e)
		{}

		this.removeAll();
		this.setVisible(false);
		this.dispose();
	}
}
