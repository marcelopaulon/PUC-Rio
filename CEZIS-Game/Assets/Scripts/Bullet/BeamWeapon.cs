using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BeamWeapon : Weapon
{
    [Header("SpecialBullet")]
    public GameObject beamBullet;
    public float beamTime = 50f;
    public float speedReductionFactor = 0.9f;


    private GameObject beamObj = null;
    private float beamTimer = 0;

    private float defaultPlayerSpeed = 0f;
    private float actualSpeed = 0f;

    // Use this for initialization
    void Start()
    {
        beamTimer = beamTime;

        this.defaultPlayerSpeed = this.GetComponentInParent<Enemy>().speed;
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

                this.GetComponentInParent<Enemy>().speed = this.defaultPlayerSpeed;
                this.GetComponentInParent<WeaponSystem>().isBeaming = false;
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

        this.actualSpeed = this.GetComponentInParent<Enemy>().speed;
        this.GetComponentInParent<Enemy>().speed = this.actualSpeed * this.speedReductionFactor;

        this.GetComponentInParent<WeaponSystem>().isBeaming = true;
    }
}

