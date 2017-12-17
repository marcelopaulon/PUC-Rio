using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BeamWeapon : Weapon
{
    [Header("SpecialBullet")]
    public GameObject beamBullet;
    public float beamTime = 50f;


    private GameObject beamObj = null;
    private float beamTimer = 0;

    // Use this for initialization
    void Start()
    {
        beamTimer = beamTime;
    }

    // Update is called once per frame
    void Update()
    {

    }

    protected void ResetReloadCooldown()
    {
        base.ResetReloadCooldown();
        this.beamTimer = beamTime;
    }

    private void FixedUpdate()
    {
        if (beamObj != null)
        {
            this.beamTimer -= Time.deltaTime;

            beamObj.transform.SetPositionAndRotation(transform.position, transform.rotation);

            if (this.beamTimer <= 0)
            {
                beamTimer = beamTime;
                Destroy(beamObj);
                beamObj = null;
            }
        }

        //DEBUG
        // Teste Em Area
        if (Input.GetKeyDown(KeyCode.Alpha3))
        {
            this.ResetReloadCooldown();

            this.Fire();
        }
    }



    public override void _fire()
    {
        beamObj = GameObject.Instantiate<GameObject>(beamBullet, transform.position, Quaternion.Euler(0,180,0) );
    }
}

