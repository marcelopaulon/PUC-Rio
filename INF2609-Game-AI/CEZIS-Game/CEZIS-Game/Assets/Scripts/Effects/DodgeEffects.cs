using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DodgeEffects : MonoBehaviour {
    public GameObject targetObj;
    public GameObject dodgeShadow;

    private bool trailEnabled = false;
    private ParticleSystem particleSys = null;
    private ParticleSystem.EmissionModule emissionMod;


    // Use this for initialization
    void Start()
    {
        VFX_DisableTrails();
    }

    private void Awake()
    {
        VFX_DisableTrails();
        particleSys = GetComponentInChildren<ParticleSystem>();
        emissionMod = particleSys.emission;
    }

    // Update is called once per frame
    void Update () {
		
	}

    void FixedUpdate()
    {
        if (!targetObj) return;

        if (trailEnabled)
        {
            Vector3 targetPos = targetObj.transform.position;
            targetPos.z -= 1.0f;
            transform.SetPositionAndRotation(targetPos, Quaternion.identity);
        }
        
    }

    public void VFX_EnableTrails()
    {
        if (!targetObj) return;
        trailEnabled = true;

        

        if (particleSys)
        {
            emissionMod.enabled = true;
        }

        GameObject.Instantiate<GameObject>(dodgeShadow, targetObj.transform.position, targetObj.transform.rotation);
    }

    public void VFX_DisableTrails()
    {
        trailEnabled = false;

        if (particleSys)
        {
            emissionMod.enabled = false;
        }

        //TrailRenderer tr = GetComponentInChildren<TrailRenderer>();
    }
}
