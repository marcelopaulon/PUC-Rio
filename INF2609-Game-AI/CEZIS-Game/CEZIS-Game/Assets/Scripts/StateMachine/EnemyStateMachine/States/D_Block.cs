using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class D_Block : State
{
    public D_Block(StateMachine machine) : base(machine)
    {

    }

    public override void Enter()
    {
        enemyScript.activateShield(0);
    }

    public override void Exit()
    {
        
    }

    public override void NextState()
    {
        machine.changeState(machine.getBaseState());
    }
}
