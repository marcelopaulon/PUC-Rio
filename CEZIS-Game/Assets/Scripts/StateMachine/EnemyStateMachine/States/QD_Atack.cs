using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class QD_Atack : State
{
    public float lineOfSiteRange;

    public QD_Atack(StateMachine machine) : base(machine)
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
        //+Jogador na linha do canhão
        //+Cooldown finalizado
        //+ Vida > 75 %
        if(enemyScript.sensorController.sensors["SensorRay"].playerOnSensor && enemyScript.weaponSystem.weaponList["BeamWeapon"].isReady && enemyScript.life > 75)
        {
            machine.changeState(new A_Charged(machine));
            return;
        }

        //+Jogador na linha do canhão
        //+Cooldown finalizado
        //+ Alta agressividade
        if (enemyScript.sensorController.sensors["SensorRay"].playerOnSensor && enemyScript.weaponSystem.weaponList["BeamWeapon"].isReady && enemyScript.tendency > 0)
        {
            machine.changeState(new A_Charged(machine));
            return;
        }

        //+Jogador no campo do ataque
        //+Cooldown finalizado
        if(enemyScript.sensorController.sensors["Sensor90"].playerOnSensor && enemyScript.weaponSystem.weaponList["BurstWeapon"].isReady)
        {
            machine.changeState(new A_90(machine));
            return;
        }

        //+Jogador no campo do ataque
        //+Cooldown finalizado
        //+ Jogador fora do campo de visão
        if (enemyScript.sensorController.sensors["Sensor360"].playerOnSensor && enemyScript.weaponSystem.weaponList["AreaWeapon"].isReady)
        {
            machine.changeState(new A_360(machine));
            return;
        }

        machine.changeState(new A_Instant(machine));
    }
}
