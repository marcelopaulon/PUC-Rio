using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StateMachine : MonoBehaviour {

    private State currentState = null;

	// Use this for initialization
	void Awake () {

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
}
