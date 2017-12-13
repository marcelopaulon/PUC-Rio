using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class A_360 : State
{
    public A_360(StateMachine machine) : base(machine)
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
        machine.changeState(new QD_Atack(machine));
    }
}
