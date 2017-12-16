using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StateMachine : MonoBehaviour {

    protected State currentState = null;
    protected GameObject parent = null;
    protected State baseState;

	// Use this for initialization
	void Awake () {
        parent = gameObject;
	}
	
	// Update is called once per frame
	void Update () {
        if (currentState != null)
            currentState.NextState();
	}

    public void changeState(State newState)
    {
        if(currentState != null)
            currentState.Exit();
        currentState = newState;
        currentState.Enter();
    }

    public GameObject getParent()
    {
        return parent;
    }

    public State getBaseState()
    {
        return baseState;
    }
}
