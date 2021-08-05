using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BurstWeapon : Weapon
{
    [Header("Effects")]
    public GameObject burstEffect;

    private void FixedUpdate()
    {
        //DEBUG
        // Teste Em Area
        if (Input.GetKeyDown(KeyCode.Alpha2))
        {
            this.ResetReloadCooldown();

            this.Fire();
        }
    }



    public override void _fire()
    {
        GameObject.Instantiate(burstEffect, transform.position, Quaternion.identity);

        float startPos =  ( Mathf.PI / 180 ) * 230;
        float coverage = Mathf.PI / 2;
        float inc = (Mathf.PI / 20);

        for(float i = startPos ; i < startPos + coverage ; i += inc )
        {
            GameObject bullet = GameObject.Instantiate<GameObject>(bulletPrefab, transform.position, Quaternion.identity);
            Vector3 dir = Vector3.zero;
            dir.z = Mathf.Sin(i);
            dir.x = Mathf.Cos(i);
            bullet.GetComponent<Bullet>().direction = dir;
        }
    }
}

