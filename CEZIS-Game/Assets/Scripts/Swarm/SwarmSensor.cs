using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SwarmSensor : MonoBehaviour {

    public GameObject collision = null;
    public GameObject danger = null;

    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    private void OnTriggerStay(Collider other)
    {
        if(other.tag == "Player")
            collision = other.gameObject;
        if (other.tag == "EnemyBullet")
            danger = other.gameObject;
    }

    private void OnTriggerExit(Collider other)
    {
        collision = null;
        danger = null;
    }
}
