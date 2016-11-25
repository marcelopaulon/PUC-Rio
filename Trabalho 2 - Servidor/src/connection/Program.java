package connection;

import java.io.IOException;
import java.net.*;
import java.util.LinkedList;
import java.util.List;

import game.Board;

import java.io.*;

public class Program {
	public static void main (String[] args) throws IOException {
		//Opens server port
		ServerSocket server = new ServerSocket(12345);
		System.out.println("Porta 12345 aberta!");
		
		//Creates lobby (where player connections and the game are managed)
		GameLobby lobby = new GameLobby();
		
		//While the game has not started, accept incoming player connections and pass them to the lobby
		while(!lobby.checkStatus()){
			Socket client = server.accept();
			System.out.println("Nova conexão com o cliente " + client.getInetAddress().getHostAddress());
			lobby.IncreasePlayers(client);
		}
		
		//When the game has begun, send the board to the players
		for(ClientConnection client : lobby.getPlayerList()){
			lobby.sendBoard();
		}
		
		//Wait for the game to end
		while(!lobby.getGameStatus());
		
		//Close connection
		server.close();
	}
}
