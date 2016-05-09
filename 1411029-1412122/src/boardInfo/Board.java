package boardInfo;

import playerInfo.PlayerColor;

public class Board {
	// Game track
	private Track track;
	
	// Player lanes
	private Lane[] lanes;
	
	// Player yards
	private Yard[] yards;
	
	public Board()
	{
		track = new Track();
		lanes = new Lane[4];
		yards = new Yard[4];
		
		for(int i = 1; i <= 4; i++)
		{
			lanes[i-1] = new Lane(PlayerColor.get(i));
			yards[i-1] = new Yard();
		}
	}
	
	public Track getTrack()
	{
		return track;
	}
	
	public Lane getLane(PlayerColor player)
	{
		return lanes[player.asInt()];
	}
	
	public Yard getYard(PlayerColor player)
	{
		return yards[player.asInt()];
	}
}