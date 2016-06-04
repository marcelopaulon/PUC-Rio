package boardInfo;

import game.BoardPositions;
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
	
	public Board(Track track, Lane[] lanes, Yard[] yards, Pocket[] pockets, PlayerColor currentPlayer){
		this.track = track;
		this.lanes = lanes;
		this.yards = yards;
		this.pockets = pockets;
		this.currentPlayer = currentPlayer;
	}
	
	public void resetBoard()
	{
		track = new Track();
		lanes = new Lane[4];
		yards = new Yard[4];
		pockets = new Pocket[4];
		
		for(int i = 0; i < 4; i++)
		{
			PlayerColor color = PlayerColor.get(i + 1);
			lanes[i] = new Lane(color);
			yards[i] = new Yard();
			pockets[i] = new Pocket(color);
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
		Dice.resetConsecutive6();
		
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
		Dice.resetConsecutive6();
		this.currentPlayer = PlayerColor.GREEN;
	}
	
	public int getDistanceToPocketSum(PlayerColor player)
	{
		int distance = 0;
		
		Lane lane = this.getLane(player);
		Track track = this.getTrack();
		int lastPosition = BoardPositions.getPositionOfLastSquareOfPlayer(player);
		
		for(int i = 1; i <= 5; i++)
		{
			distance += lane.getSquareAt(i).getPawnCount()*(6-i);
		}
		
		for(int i = 1; i <= 52; i++)
		{
			if(track.getSquareAt(i).getPawnCount() > 0)
			{
				if(track.getSquareAt(i).getPawnsColors().contains(player))
					if(i>lastPosition) 	distance += track.getSquareAt(i).getPawnCount()*(5 + lastPosition + 52 - i);  // 5 is added because of the lane length
					else distance += track.getSquareAt(i).getPawnCount()*(5 + lastPosition - i); //same as above
			}
		}
		
		distance += getYard(player).getCount() * (52 + 5);
		
		return distance;
	}
}