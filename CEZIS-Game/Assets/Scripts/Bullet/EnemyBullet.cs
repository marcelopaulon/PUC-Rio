using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyBullet : Bullet
{

	// Use this for initialization
	void Start () {
		
	}
    
    public void OnCollisionEnter(Collision collision)
    {
        Debug.Log(collision.collider);
        Destroy(gameObject);
    }
}
