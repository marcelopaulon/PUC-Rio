using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour {
    public float thresholdMove = 0.5f; 

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void FixedUpdate () {
        //a, w, s, d
        Vector3 move = new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical"));
        move *= Time.deltaTime;

        transform.Translate(move);

        // tiro
        if (Input.GetKeyDown(KeyCode.Space))
        {
            Debug.Log("Tiro");
        }

        // defesa
	}
}
