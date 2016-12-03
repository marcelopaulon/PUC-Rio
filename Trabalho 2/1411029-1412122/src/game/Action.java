package game;

import connection.Connection;

public abstract class Action implements IAction
{
	private ActionListener listener;

	protected boolean capturedPawn = false;

	public Action(ActionListener listener) throws Exception
	{
		if (listener == null)
		{
			throw new Exception("ActionListener cannot be null.");
		}
		
		this.listener = listener;
	}

	protected final void onActionExecuted()
	{
		listener.onActionExecuted(capturedPawn);
		
		try {
			Connection.sendToServer(Connection.game);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Unable to send data to server");
		}
	}
}
