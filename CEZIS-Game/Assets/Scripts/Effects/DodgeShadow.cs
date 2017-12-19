using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DodgeShadow : MonoBehaviour {
    public float timeToFade = 0.3f;
    private float timerToFade;
    private Renderer rend;

	// Use this for initialization
	void Start () {
		
	}

    private void Awake()
    {
        timerToFade = timeToFade;
        rend = GetComponent<Renderer>();
    }

    // Update is called once per frame
    void Update()
    {
        timerToFade -= Time.deltaTime;

        float alp = timerToFade / timeToFade;
        rend.material.color.a = alp;
    }
}
