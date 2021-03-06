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
        if(enemyScript)
            if(enemyScript.player)
                enemyScript.moveTo(new Vector3(enemyScript.player.transform.position.x, enemyScript.transform.position.y, enemyScript.transform.position.z));
    }

    public override void Exit()
    {
        
    }

    public override void NextState()
    {
        machine.changeState(machine.getBaseState());
    }
}
