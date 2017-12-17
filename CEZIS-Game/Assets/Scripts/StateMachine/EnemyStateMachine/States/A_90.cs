using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class A_90 : State
{
    public A_90(StateMachine machine) : base(machine)
    {

    }

    public override void Enter()
    {
        enemyScript.weaponSystem.weaponList["BurstWeapon"].Fire();
    }

    public override void Exit()
    {
        
    }

    public override void NextState()
    {
        machine.changeState(machine.getBaseState());
    }
}
