using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FadingLight : MonoBehaviour {
    public float livingTime = 10f;
    public float fadingTime = 10f;
    public float livingIntensity = 10f;

    private float timerLiving = 0f;
    private float timerFading = 0f;

    private Light lightComponent;

	// Use this for initialization
	void Start () {
		
	}

    private void Awake()
    {
        lightComponent = GetComponent<Light>();
        if (lightComponent)
            lightComponent.intensity = livingIntensity;
    }

    // Update is called once per frame
    void Update () {
		
	}

    private void FixedUpdate()
    {

        if (timerLiving < livingTime)
            timerLiving += Time.deltaTime;
        else if (timerFading < fadingTime)
        {
            timerFading += Time.deltaTime;

            if (lightComponent)
            {
                float proportion = (fadingTime - timerFading) / fadingTime;
                lightComponent.intensity = proportion * livingIntensity;
            }
        }
        else
        {
            lightComponent.enabled = false;
        }
    }
}
