package game.common;

public interface INotificationManager {

	void notify6RepeatMove();

	void notifyCaptureBonus();

	void notifyExitBonus();

	void notify3Consecutive6Penalty();

	void notifyError(String message);

	void notify6Becomes7Bonus();

	void notifyGameEnd(String[] positions);

	void notifyGameLoadingError();

	void notifyGameStart();

}
