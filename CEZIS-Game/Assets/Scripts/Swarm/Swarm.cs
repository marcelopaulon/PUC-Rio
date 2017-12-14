using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Swarm : MonoBehaviour {

    public GameObject player;
    public float speed = 0.2f;

    public float swarmDistance = 3;
    public float playerDistance = 6;

    public float delayTime = 0.2f;
    public GameObject bulletPrefab;

    public float life = 3;

    private float _currentDelay = 0;    

    private SwarmSensor sensor;

	// Use this for initialization
	void Awake () {
        sensor = GetComponentInChildren<SwarmSensor>();
	}
	
	// Update is called once per frame
	void FixedUpdate ()
    {
        
        /*if (sensor.danger != null)
        {
            //if(Vector3.Distance(transform.position, sensor.collision.transform.position) > swarmDistance)
            transform.position = Vector3.MoveTowards(transform.position, sensor.danger.transform.position, -speed);
        }*/
        if(sensor.collision != null)
        {
            //if(Vector3.Distance(transform.position, sensor.collision.transform.position) > swarmDistance)
                transform.position = Vector3.MoveTowards(transform.position, sensor.collision.transform.position, -speed);
        }
        else if(Vector3.Distance(transform.position, player.transform.position) > playerDistance)
        {
            transform.position = Vector3.MoveTowards(transform.position, player.transform.position, speed * 2);
        }
	}

    private void Update()
    {
        if (life <= 0)
        {
            Boom();
        }

        if (_currentDelay > 0)
        {
            _currentDelay -= Time.deltaTime;
        }
        else
        {
            GameObject.Instantiate(bulletPrefab, transform.position, Quaternion.identity);
            _currentDelay = delayTime;
        }
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
}
