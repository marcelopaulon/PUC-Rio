using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class M_Flee : State
{
    public M_Flee(StateMachine machine) : base(machine)
    {

    }

    public override void Enter()
    {
        Vector3 enemyPos = new Vector3(enemyScript.transform.position.x, 0, enemyScript.transform.position.z);
        Vector3 playerPos = new Vector3(enemyScript.player.transform.position.x, 0, enemyScript.player.transform.position.z);
        enemyScript.moveTo(Vector3.MoveTowards(enemyPos, playerPos, 10f));
    }

    public override void Exit()
    {
        
    }

    public override void NextState()
    {
        machine.changeState(machine.getBaseState());
    }
}
