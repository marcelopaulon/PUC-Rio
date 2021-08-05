package game;

import boardInfo.Board;

public interface IViewManager {
	public void resetHighlights();
	
	public void resetBoard(Board savedMap);
}