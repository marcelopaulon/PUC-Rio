package connection;

import java.net.*;
import java.util.LinkedList;
import java.util.List;

public class GameLobby {
	private List<Socket> playerList;
	private boolean ready;
	
	public GameLobby(){
		playerList = new LinkedList<Socket>();
		ready = false;
	}
	
	public void IncreasePlayers(Socket socket){
		playerList.add(socket);
		if(playerList.size() == 4){
			ready = true;
		}
	}
	
	public boolean checkStatus(){
		return ready;
	}
	
}
