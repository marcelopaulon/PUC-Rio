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
        enemyScript.weaponSystem.weaponList["AreaWeapon"].Fire();
        enemyScript.StartAreaAttackTimer();
    }

    public override void Exit()
    {
        
    }

    public override void NextState()
    {
        machine.changeState(machine.getBaseState());
    }
}
