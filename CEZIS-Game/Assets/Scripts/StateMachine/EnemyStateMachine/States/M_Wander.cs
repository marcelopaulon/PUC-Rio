using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class M_Wander : State
{
    public M_Wander(StateMachine machine) : base(machine)
    {

    }

    public override void Enter()
    {
        enemyScript.moveTo(new Vector3(enemyScript.randomNumber(), 0, enemyScript.randomNumber()));
    }

    public override void Exit()
    {
        
    }

    public override void NextState()
    {
        machine.changeState(new QD_Move(machine));
    }
}
