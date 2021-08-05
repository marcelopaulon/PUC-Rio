using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AtackMachine : StateMachine {

    // Use this for initialization
    void Start () {
        baseState = new QD_Atack(this);
        currentState = baseState;
    }
}
