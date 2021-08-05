using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class QD_Move : State
{
    public float playerCloseDistance = 40;
    public float playerFarDistance = 70;
    public float lineOfSiteRange = 2;

    public QD_Move(StateMachine machine) : base(machine)
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
        //+Vida < 25%
        //+Em Modo de Mirar
        if (enemyScript.life < 25 && (enemyScript.transform.position.x - enemyScript.player.transform.position.x) > lineOfSiteRange)
        {
            machine.changeState(new M_Flee(machine));
            return;
        }

        if(!enemyScript.sensorController.sensors["SensorRay"].playerOnSensor && !enemyScript.weaponSystem.weaponList["BurstWeapon"].isReady && !enemyScript.weaponSystem.weaponList["AreaWeapon"].isReady)
        {
            machine.changeState(new M_Aim(machine));
            return;
        }

        if(!enemyScript.weaponSystem.weaponList["BurstWeapon"].isReady && !enemyScript.weaponSystem.weaponList["AreaWeapon"].isReady && enemyScript.tendency < -0.5f)
        {
            machine.changeState(new M_BackAway(machine));
            return;
        }

        //+Media ou Alta Agressividade
        //+ Em Modo Evasivo
        if (enemyScript.weaponSystem.weaponList["BeamWeapon"].isReady && !enemyScript.sensorController.sensors["SensorRay"].playerOnSensor)
        {
            machine.changeState(new M_Aim(machine));
            return;
        }

        //+Ataque Em Area Disponivel
        //+Jogador fora da linha de tiro
        if (enemyScript.weaponSystem.weaponList["AreaWeapon"].isReady && !enemyScript.sensorController.sensors["Sensor360"].playerOnSensor)
        {
            machine.changeState(new M_Approach(machine));
            return;
        }

        //+Ataque Conico Disponivel
        //+Alta Agressividade
        if (enemyScript.weaponSystem.weaponList["BurstWeapon"].isReady && enemyScript.tendency > 0)
        {
            machine.changeState(new M_Approach(machine));
            return;
        }

        //+Baixa Agressividade
        //+Jogador não está longe
        if (enemyScript.sensorController.distanceToPlayer < playerCloseDistance && enemyScript.tendency < 0)
        {
            machine.changeState(new M_BackAway(machine));
            return;
        }

        if (enemyScript.arrivedDestination)
        {
            machine.changeState(new M_Wander(machine));
            return;
        }
    }
}
