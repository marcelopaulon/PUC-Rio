package gui;

import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;

import boardInfo.Board;
import connection.Connection;
import game.GameControl;
import notifications.Notifications;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.net.ConnectException;

public class ConnectionDialog extends JDialog {

	/**
	 * 
	 */
	private static final long serialVersionUID = -487533180942402532L;
	
	private JTextField ip;
	private JTextField port;
	
	private static JFrame window;

	private GameControl gameControl;

	private Connection connection;
	
	private static Dimension defaultDimension = new Dimension(527, 586);
	
	public static JFrame getWindow()
	{
		return window;
	}
	
	public ConnectionDialog()
	{
		this.setTitle("Ultimate Mega Ludo");
		BoxLayout manager = new BoxLayout(getContentPane(), BoxLayout.PAGE_AXIS);
		
		getContentPane().setLayout(manager);
		
		JPanel buttonPanel = new JPanel();
		
		JButton okButton = new JButton("Conectar");
		okButton.addActionListener(new ActionListener()
		{
		  public void actionPerformed(ActionEvent e)
		  {
			  System.out.println("Deve começar a thread");
			  
			  try {
				  int portNumber = Integer.parseInt(port.getText());
				  
				  connection = new Connection(ip.getText(), portNumber);
				  createGameWindow();
				  connection.startGame(gameControl);
				  dispose();
			  } catch(NumberFormatException e1)
			  {
				  JOptionPane.showMessageDialog(null, "Número de porta inválido");
			  } catch(ConnectException e3)
			  {
				  JOptionPane.showMessageDialog(null, "Não foi possível se conectar ao servidor");
			  }
			  catch(Exception e2)
			  {
				  e2.printStackTrace();
				  JOptionPane.showMessageDialog(null, "Erro desconhecido ao abrir conexão");
			  }
		  }
		});
		
		JButton cancelButton = new JButton("Cancelar");
		cancelButton.addActionListener(new ActionListener()
		{
		  public void actionPerformed(ActionEvent e)
		  {
			  System.exit(0);
		  }
		});
		
		buttonPanel.add(okButton, BorderLayout.EAST);
		buttonPanel.add(cancelButton, BorderLayout.WEST);
		
		JPanel form = new JPanel();
		
		JPanel ipPanel = new JPanel();
		ipPanel.add(new JLabel("IP"), BorderLayout.NORTH);
		ip = new JTextField();
		ip.setText("localhost");
		ipPanel.add(ip, BorderLayout.SOUTH);
		
		JPanel portPanel = new JPanel();
		portPanel.add(new JLabel("Porta"), BorderLayout.NORTH);
		port = new JTextField();
		port.setText("5002");
		portPanel.add(port, BorderLayout.SOUTH);
		BorderLayout layout = new BorderLayout(0, 0);
		
		form.setLayout(layout);
		
		form.add(ipPanel, BorderLayout.NORTH);
		form.add(portPanel, BorderLayout.SOUTH);
		
		getContentPane().add(form, BorderLayout.NORTH);
		getContentPane().add(buttonPanel, BorderLayout.SOUTH);
		
		this.pack();
		
	}
	

	private GamePanel createGamePanel(Board board)
	{
		GamePanel gamePanel = new GamePanel(board);
		window.add(gamePanel, BorderLayout.CENTER);
		return gamePanel;
	}
	
	private void createGameWindow()
	{
		window = new JFrame("Ultimate Mega Ludo 2k16.2");
		
		Board board = new Board();
		
		gameControl = new GameControl(connection.getPlayerNumber(), board, createGamePanel(board), Notifications.getInstance(window, board));
		
		//createMainMenu(board);
		
		window.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		window.setMinimumSize(defaultDimension);
		window.pack();
		window.setLocationRelativeTo(null);
		window.setSize(defaultDimension);
		window.setVisible(true);
		
		Notifications.getInstance().notifyGameStart();
		gameControl.startGame();
	}
	
}
