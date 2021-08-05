using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DodgeReady : MonoBehaviour
{
    private ParticleSystem particleSys = null;
    private ParticleSystem.EmissionModule emissionMod;


    // Use this for initialization
    void Start()
    {
        VFX_Enable();
    }

    private void Awake()
    {
        VFX_Enable();
        particleSys = GetComponentInChildren<ParticleSystem>();
        emissionMod = particleSys.emission;
    }

    // Update is called once per frame
    void Update()
    {

    }

    public void VFX_Enable()
    {
        if (particleSys)
        {
            emissionMod.enabled = true;
        }
    }

    public void VFX_Disable()
    {
        if (particleSys)
        {
            emissionMod.enabled = false;
        }
    }

}

