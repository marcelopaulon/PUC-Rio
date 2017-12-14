using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class A_Instant : State
{
    public A_Instant(StateMachine machine) : base(machine)
    {

    }

    public override void Enter()
    {
        enemyScript.weaponSystem.weaponList["InstantWeapon"].Fire();
    }

    public override void Exit()
    {
        
    }

    public override void NextState()
    {
        machine.changeState(new QD_Atack(machine));
    }
}
