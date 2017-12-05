using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerBullet : Bullet {

	// Use this for initialization
	void Start () {
		
	}

    public void OnTriggerEnter(Collider collider)
    {
        Debug.Log(collider.tag);
        if(collider.tag != "Enemy")
        {
            return;
        }

        Debug.Log("Acertou " + collider.name);
        Destroy(gameObject);
    }
}
