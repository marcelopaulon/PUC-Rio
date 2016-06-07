package game.common;

import boardInfo.Board;

public abstract class NotificationManager {
	
	protected Board board;
	
	public NotificationManager(Board board)
	{
		this.board = board;
	}
	
	public abstract void notify6RepeatMove();

	public abstract void notifyCaptureBonus();

	public abstract void notifyExitBonus();

	public abstract void notify3Consecutive6Penalty();

	public abstract void notifyError(String message);

	public abstract void notify6Becomes7Bonus();

	public abstract void notifyGameEnd(String[] positions);

	public abstract void notifyGameLoadingError();

	public abstract void notifyGameStart();

}
