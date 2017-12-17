using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InstantWeapon : Weapon {
    private float centerDirection = Mathf.PI * 1.5f;
    private float weaponImprecision = Mathf.PI / 40;

    public override void _fire()
    {
        GameObject bullet = GameObject.Instantiate(bulletPrefab, transform.position, Quaternion.identity);

        float rand = UnityEngine.Random.Range(-1.0f, 1.0f);
        float piDir = centerDirection + (weaponImprecision * rand);
        Vector3 dir = Vector3.zero;
        dir.z = Mathf.Sin(piDir);
        dir.x = Mathf.Cos(piDir);
        bullet.GetComponent<Bullet>().direction = dir;
    }

    private void OnDrawGizmos()
    {
        Vector3 otherSpawnPosition = bulletSpawnPosition;
        float gizmosSize = 0.5f;

        otherSpawnPosition.x *= -1;
        Gizmos.color = Color.red;
        Gizmos.DrawWireSphere(bulletSpawnPosition + transform.position, gizmosSize);
        Gizmos.DrawWireSphere(otherSpawnPosition + transform.position, gizmosSize);
    }
}
