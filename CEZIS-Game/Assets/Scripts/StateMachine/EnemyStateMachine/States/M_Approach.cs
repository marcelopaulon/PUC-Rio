using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class M_Approach : State
{
    public M_Approach(StateMachine machine) : base(machine)
    {

    }

    public override void Enter()
    { 
        enemyScript.moveTo(new Vector3(enemyScript.player.transform.position.x, enemyScript.transform.position.y, enemyScript.player.transform.position.z));
    }

    public override void Exit()
    {
        
    }

    public override void NextState()
    {
        machine.changeState(machine.getBaseState());
    }
}
