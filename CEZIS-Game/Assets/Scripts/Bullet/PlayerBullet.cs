using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerBullet : Bullet
{
    public float damage = 1f;

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

        Enemy enemy = collider.GetComponent<Enemy>();

        if (enemy == null)
        {
            Debug.LogError("Enemy doesn't have enemy component");
            return;
        }

        enemy.OnBulletHit(damage);

        Debug.Log("Acertou " + collider.name);
        Destroy(gameObject);
    }
}
