using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovementMachine : StateMachine {

	// Use this for initialization
	void Start () {
        currentState = new QD_Move(this);
	}
}
