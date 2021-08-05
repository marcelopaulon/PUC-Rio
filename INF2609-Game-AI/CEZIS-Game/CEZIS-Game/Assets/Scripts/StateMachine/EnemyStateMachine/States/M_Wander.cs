﻿using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class M_Wander : State
{
    public M_Wander(StateMachine machine) : base(machine)
    {

    }

    public override void Enter()
    {
        enemyScript.moveTo(new Vector3(enemyScript.randomNumber(-10, 10), 0, enemyScript.randomNumber(-10, 10)));
    }

    public override void Exit()
    {
        
    }

    public override void NextState()
    {
        machine.changeState(machine.getBaseState());
    }
}
