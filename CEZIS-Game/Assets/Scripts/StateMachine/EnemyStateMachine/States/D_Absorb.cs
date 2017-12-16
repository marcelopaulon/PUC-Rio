using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class D_Absorb : State
{
    public D_Absorb(StateMachine machine) : base(machine)
    {

    }

    public override void Enter()
    {
        enemyScript.activateShield(2);
    }

    public override void Exit()
    {
        
    }

    public override void NextState()
    {
        machine.changeState(machine.getBaseState());
    }
}
