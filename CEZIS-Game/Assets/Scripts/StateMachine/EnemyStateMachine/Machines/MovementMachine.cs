using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovementMachine : StateMachine {

	// Use this for initialization
	void Start () {
        baseState = new QD_Move(this);
        currentState = baseState;
    }
}
