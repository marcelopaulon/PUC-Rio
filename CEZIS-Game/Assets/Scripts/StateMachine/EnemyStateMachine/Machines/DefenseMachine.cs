using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DefenseMachine : StateMachine {

    // Use this for initialization
    void Start () {
        currentState = new QD_Defense(this);
    }
}
