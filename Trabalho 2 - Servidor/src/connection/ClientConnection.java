package connection;

import java.io.IOException;
import java.net.*;

public class ClientConnection {
	public static void main (String[] args) throws IOException {
		ServerSocket server = new ServerSocket(12345);
		System.out.println("Porta 12345 aberta!");
		
	}
}
