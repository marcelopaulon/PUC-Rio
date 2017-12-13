using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class QD_Atack : State
{ 
    public QD_Atack(StateMachine machine) : base(machine)
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
        if(enemyScript.instantAtackDelay <= 0)
        {
            machine.changeState(new A_Instant(machine));
        }
    }
}
