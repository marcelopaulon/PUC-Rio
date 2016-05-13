package boardInfo;

import playerInfo.PlayerColor;

public class Board {
	// Game track
	private Track track;
	
	// Player lanes
	private Lane[] lanes;
	
	// Player yards
	private Yard[] yards;
	
	private PlayerColor currentPlayer;
	
	public Board()
	{
		track = new Track();
		lanes = new Lane[4];
		yards = new Yard[4];
		
		for(int i = 0; i < 4; i++)
		{
			lanes[i] = new Lane(PlayerColor.get(i + 1));
			yards[i] = new Yard();
		}
		
		resetCurrentPlayer();
	}
	
	public Track getTrack()
	{
		return track;
	}
	
	public Lane getLane(PlayerColor player)
	{
		return lanes[player.asInt() - 1];
	}
	
	public Yard getYard(PlayerColor player)
	{
		return yards[player.asInt() - 1];
	}

	public PlayerColor getCurrentPlayer() {
		return currentPlayer;
	}

	public PlayerColor nextPlayer() {
		if(this.currentPlayer == PlayerColor.GREEN)
		{
			this.currentPlayer = PlayerColor.YELLOW;
		}
		else if(this.currentPlayer == PlayerColor.YELLOW)
		{
			this.currentPlayer = PlayerColor.BLUE;
		}
		else if(this.currentPlayer == PlayerColor.BLUE)
		{
			this.currentPlayer = PlayerColor.RED;
		}
		else if(this.currentPlayer == PlayerColor.RED)
		{
			this.currentPlayer = PlayerColor.GREEN;
		}
		
		return this.currentPlayer;
	}
	
	public void resetCurrentPlayer() {
		this.currentPlayer = PlayerColor.GREEN;
	}
}