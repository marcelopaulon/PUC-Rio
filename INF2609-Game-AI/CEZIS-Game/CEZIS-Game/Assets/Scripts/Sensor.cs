using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Sensor : MonoBehaviour {

    public bool playerOnSensor = false;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    private void OnTriggerEnter(Collider collider)
    {
        if(collider.tag == "Player")
            playerOnSensor = true;
    }

    private void OnTriggerExit(Collider collider)
    {
        if (collider.tag == "Player")
            playerOnSensor = false;
    }
}
