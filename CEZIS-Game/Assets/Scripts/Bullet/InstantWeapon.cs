using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InstantWeapon : Weapon {

    [Header("Bullet Stats")]
    public GameObject bulletPrefab;
    public Vector3 bulletSpawnPosition;

    public override void _fire()
    {
        GameObject.Instantiate(bulletPrefab, transform.position, Quaternion.identity);
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
