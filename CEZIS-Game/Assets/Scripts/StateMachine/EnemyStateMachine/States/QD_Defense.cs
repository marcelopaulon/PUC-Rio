using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class QD_Defense : State
{
    public QD_Defense(StateMachine machine) : base(machine)
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
        if(enemyScript.energy > 50 && enemyScript.life >= 75)
        {
            machine.changeState(new D_Reflect(machine));
        }
        else if (enemyScript.energy > 50 && enemyScript.life <= 50)
        {
            machine.changeState(new D_Absorb(machine));
        }
        else
        {
            machine.changeState(new D_Block(machine));
        }
    }
}
