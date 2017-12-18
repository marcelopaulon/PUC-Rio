using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyShield : MonoBehaviour {

    public int type;
    public List<Material> typeMaterial;

    public GameObject enemyReflectBullet;

    private float duration;
    private Enemy enemy;

    private float centerDirection = Mathf.PI * 1.5f;
    private float weaponImprecision = Mathf.PI / 40;

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
                enemy.OnBulletHit(damage / 10, true);
                break;
            case 1:
                GameObject bullet = Instantiate<GameObject>(enemyReflectBullet, impactPoint, Quaternion.identity);
                float rand = UnityEngine.Random.Range(-1.0f, 1.0f);
                float piDir = centerDirection + (weaponImprecision * rand);
                Vector3 dir = Vector3.zero;
                dir.z = Mathf.Sin(piDir);
                dir.x = Mathf.Cos(piDir);
                bullet.GetComponent<Bullet>().direction = dir;

                enemy.OnBulletHit(damage / 2, true);
                break;
            case 2:
                enemy.OnBulletHit(damage / 5, true);
                break;
        }
    }
}
