using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyBullet : Bullet
{
    public float damage = 1f;

	// Use this for initialization
	void Start () {
		
	}
    
    public void OnTriggerEnter(Collider collider)
    {
        if (collider.tag != "Player")
        {
            return;
        }

        Destroy(gameObject);
    }
}
