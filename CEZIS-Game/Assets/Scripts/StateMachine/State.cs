public abstract class State {

    public StateMachine machine;

    public State(StateMachine machine)
    {
        this.machine = machine;
    }

    public abstract void NextState();

    public abstract void Enter();

    public abstract void Exit();
}
