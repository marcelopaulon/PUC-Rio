package main;

import gfx.DiceAssets;
import gui.ConnectionDialog;
import gui.SplashScreen;

public class Program
{	
	private void showSplashScreen()
	{
		new SplashScreen();
	}

	public Program()
	{
		showSplashScreen();
		
		ConnectionDialog dialog = new ConnectionDialog();
		dialog.setVisible(true);
		
	}
	
	public static void main(String[] arndt)
	{
		DiceAssets.init();
		new Program();
	}
}
