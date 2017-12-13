using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class QD_Move : State
{
    public QD_Move(StateMachine machine) : base(machine)
    {
        
    }

    public override void Enter()
    {

    }

    public override void Exit()
    {

    }

    public override void NextState()
    {
        if(enemyScript.arrivedDestination)
        {
            machine.changeState(new M_Wander(machine));
        }

    }
}
