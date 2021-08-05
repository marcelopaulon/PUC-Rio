using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class D_Reflect : State
{
    public D_Reflect(StateMachine machine) : base(machine)
    {

    }

    public override void Enter()
    {
        enemyScript.activateShield(1);
    }

    public override void Exit()
    {
        
    }

    public override void NextState()
    {
        machine.changeState(machine.getBaseState());
    }
}
