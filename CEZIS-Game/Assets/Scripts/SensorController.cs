using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SensorController : MonoBehaviour {

    public float distanceToPlayer;

    public Dictionary<string, Sensor> sensors = new Dictionary<string, Sensor>();

    public GameObject player;

    // Use this for initialization
    void Awake () { 

        foreach(Transform child in transform)
        {
            if(child.GetComponent<Sensor>() != null)
            {
                sensors.Add(child.name, child.GetComponent<Sensor>());
            }
        }

        player = GameObject.FindGameObjectWithTag("Player");
    }

    // Update is called once per frame
    void Update()
    {
        if(player)
            distanceToPlayer = Vector3.Distance(transform.position, player.transform.position);
    }

    public float getPlayerLife()
    {
        return player.GetComponent<Player>().life;
    }
}
