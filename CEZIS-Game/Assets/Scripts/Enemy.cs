using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Enemy : MonoBehaviour {
    public float life = 100f;
    public float energy = 40f;

    public float tendency = 0f;
    public float speed = 0.1f;

    public GameObject enemyShield;

    public GameObject player;
    private Player playerScript;

    private Vector3 sugestPos;
    public bool arrivedDestination = false;

    public SensorController sensorController;
    public WeaponSystem weaponSystem;

    // Use this for initialization
    void Start () {
        sugestPos = transform.position;
        playerScript = player.GetComponent<Player>();
    }
	
	// Update is called once per frame
	void Update () {
		if(life <= 0)
        {
            Boom();
        }

        if(energy < 100f)
            energy += Time.deltaTime;
        else
            energy = 100f;
    }

    private void FixedUpdate()
    {
        if (transform.position == sugestPos)
            arrivedDestination = true;
        else
            arrivedDestination = false;

        transform.position = Vector3.MoveTowards(transform.position, sugestPos, speed);
    }

    public void OnBulletHit(float damage)
    {
        life -= damage;
    }

    //Chamada quando o inimigo morre
    private void Boom()
    {
        Destroy(gameObject);
    }

    public void addAtackTendency(float ammount)
    {
        if (tendency + ammount > 1f)
            tendency = 1f;
        else
            tendency += ammount;
    }

    public void addDefenseTendency(float ammount)
    {
        if (tendency - ammount > -1f)
            tendency = -1f;
        else
            tendency -= ammount;
    }

    public bool useEnergy(int ammount)
    {
        if(energy - ammount >= 0)
        {
            energy -= ammount;
            return true;
        }

        return false;
    }

    public void moveTo(Vector3 sugestPos)
    {
        this.sugestPos = sugestPos;
    }

    public void activateShield(int type)
    {
        if(useEnergy(50))
        {
            enemyShield.GetComponent<EnemyShield>().type = type;
            Instantiate(enemyShield, transform);
        }
    }

    public float randomNumber()
    {
        return Random.Range(-10, 10);
    }
}
