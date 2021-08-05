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
        EnemyShield enemyShield = collider.GetComponent<EnemyShield>();

        if (enemy == null && enemyShield == null)
        {
            Debug.LogError("Enemy doesn't have enemy component");
            return;
        }

        if (enemy != null)
            enemy.OnBulletHit(damage, false);
        if (enemyShield != null)
             enemyShield.OnBulletHit(damage, transform.position);
            

        Debug.Log("Acertou " + collider.name);

        base.setToDestroy();
    }
}
