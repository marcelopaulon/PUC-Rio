using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AreaWeapon : Weapon
{
    [Header("Effects")]
    public GameObject areaEffect;

    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    private void FixedUpdate()
    {
        //DEBUG
        // Teste Em Area
        if (Input.GetKeyDown(KeyCode.Alpha1))
        {
            this.ResetReloadCooldown();

            this.Fire();
        }
    }



    public override void _fire()
    {
        GameObject.Instantiate(areaEffect, transform.position, Quaternion.identity);

        for (float i = 0; i < Mathf.PI * 2 ; i += (Mathf.PI / 20))
        {
            GameObject bullet = GameObject.Instantiate<GameObject>( bulletPrefab , transform.position, Quaternion.identity);
            Vector3 dir = Vector3.zero;
            dir.z = Mathf.Sin(i);
            dir.x = Mathf.Cos(i);
            bullet.GetComponent<Bullet>().direction = dir;
        }
    }
}
