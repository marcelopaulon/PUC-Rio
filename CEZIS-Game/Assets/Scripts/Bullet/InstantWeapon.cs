using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InstantWeapon : Weapon {

    public GameObject bulletPrefab;

    public override void _fire()
    {
        GameObject.Instantiate(bulletPrefab, transform.position, Quaternion.identity);
    }
}
