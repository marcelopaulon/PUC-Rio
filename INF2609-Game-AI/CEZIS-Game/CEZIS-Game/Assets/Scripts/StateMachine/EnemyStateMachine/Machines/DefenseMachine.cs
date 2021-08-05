using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DefenseMachine : StateMachine {

    // Use this for initialization
    void Start () {
        baseState = new QD_Defense(this);
        currentState = baseState;
    }
}
