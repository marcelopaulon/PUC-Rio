public abstract class State {

    protected StateMachine machine;
    protected Enemy enemyScript;

    public State(StateMachine machine)
    {
        this.machine = machine;
        enemyScript = machine.getParent().GetComponent<Enemy>();
    }

    public abstract void NextState();

    public abstract void Enter();

    public abstract void Exit();
}
