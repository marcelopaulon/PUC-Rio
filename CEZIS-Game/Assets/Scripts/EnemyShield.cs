using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyShield : MonoBehaviour {

    public int type;
    public List<Material> typeMaterial;

    public GameObject enemyReflectBullet;

    private float duration;
    private Enemy enemy;

    private void Awake()
    {
        GetComponent<MeshRenderer>().material = typeMaterial[type];

        enemy = gameObject.GetComponentInParent<Enemy>();

        switch(type)
        {
            case 0:
                duration = 10;
                break;
            case 1:
                duration = 7;
                break;
            case 2:
                duration = 4;
                break;
        }
    }

    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        if (duration <= 0)
        {
            Destroy(gameObject);
            enemy.shieldInstance = null;
        }
            
        duration -= Time.deltaTime;
	}

    public void OnBulletHit(float damage, Vector3 impactPoint)
    {
        enemy.addAtackTendency(0.05f);
        enemy.energy += 1;
        switch (type)
        {
            case 0:
                enemy.life -= damage / 10;
                break;
            case 1:
                Instantiate(enemyReflectBullet, impactPoint, Quaternion.identity);
                enemy.life -= damage / 2;
                break;
            case 2:
                enemy.life += damage / 5;
                break;
        }
    }
}
