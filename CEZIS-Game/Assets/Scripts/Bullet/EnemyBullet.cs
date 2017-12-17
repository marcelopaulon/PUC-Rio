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

        if (collider.GetComponent<Player>() != null)
            collider.GetComponent<Player>().OnBulletHit(damage);
        if (collider.GetComponent<Swarm>() != null)
            collider.GetComponent<Swarm>().OnBulletHit(damage);

        base.setToDestroy();
    }
}
