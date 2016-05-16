package boardInfo;

import playerInfo.PlayerColor;

public class Board {
	// Game track
	private Track track;
	
	// Player lanes
	private Lane[] lanes;
	
	// Player yards
	private Yard[] yards;
	
	// Player pockets
	private Pocket[] pockets;
	
	private PlayerColor currentPlayer;
	
	public Board()
	{
		resetBoard();
	}
	
	public void resetBoard()
	{
		track = new Track();
		lanes = new Lane[4];
		yards = new Yard[4];
		pockets = new Pocket[4];
		
		for(int i = 0; i < 4; i++)
		{
			lanes[i] = new Lane(PlayerColor.get(i + 1));
			yards[i] = new Yard();
			pockets[i] = new Pocket();
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
	
	public Pocket getPocket(PlayerColor player)
	{
		return pockets[player.asInt() - 1];
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
	
	private void resetCurrentPlayer() {
		this.currentPlayer = PlayerColor.GREEN;
	}
}