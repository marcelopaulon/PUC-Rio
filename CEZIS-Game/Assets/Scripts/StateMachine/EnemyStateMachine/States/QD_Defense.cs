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
        if (enemyScript.energy > 50)
        {
            machine.changeState(new D_Absorb(machine));
            return;
        }

        if (enemyScript.energy > 40 && enemyScript.life > 50)
        {
            machine.changeState(new D_Reflect(machine));
            return;
        }

        if (enemyScript.energy > 40 && enemyScript.life <= 50)
        {
            machine.changeState(new D_Absorb(machine));
            return;
        }

        if (enemyScript.energy > 30 && enemyScript.life >= 50 && (enemyScript.weaponSystem.weaponList["AreaWeapon"].isReady || enemyScript.weaponSystem.weaponList["BurstWeapon"].isReady))
        {
            machine.changeState(new D_Block(machine));
            return;
        }

        if(enemyScript.energy > 30 && enemyScript.life <= 50)
        {
            machine.changeState(new D_Block(machine));
            return;
        }
    }
}
