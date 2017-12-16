using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class A_Charged : State
{
    public A_Charged(StateMachine machine) : base(machine)
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
        machine.changeState(machine.getBaseState());
    }
}
