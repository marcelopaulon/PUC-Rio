using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class M_BackAway : State
{
    public M_BackAway(StateMachine machine) : base(machine)
    {

    }

    public override void Enter()
    {
        enemyScript.moveTo(new Vector3(enemyScript.transform.position.x, enemyScript.transform.position.y, enemyScript.player.transform.position.z + 80));
    }

    public override void Exit()
    {
        
    }

    public override void NextState()
    {
        machine.changeState(machine.getBaseState());
    }
}
