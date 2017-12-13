using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class M_Aim : State
{
    public M_Aim(StateMachine machine) : base(machine)
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
        machine.changeState(new QD_Move(machine));
    }
}
