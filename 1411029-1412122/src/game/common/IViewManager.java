package game.common;

import boardInfo.Board;

public interface IViewManager {
	public void resetHighlights();
	
	public void refresh();

	public void resetBoard(Board savedMap);
}