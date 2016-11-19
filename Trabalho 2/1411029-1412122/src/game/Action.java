package game;

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

	protected void onActionExecuted()
	{
		listener.onActionExecuted(capturedPawn);
	}
}
