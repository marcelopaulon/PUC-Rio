using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BeamBullet : MonoBehaviour {
    public float damage = 10f;
    public GameObject beamContactEffect;
    public GameObject beamDieEffect;

    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    public void OnTriggerStay(Collider collider)
    {
        if (collider.tag != "Player")
        {
            return;
        }


        float hitDamage = this.damage;
        if (collider.GetComponent<Player>() != null)
        {
            hitDamage *= Time.deltaTime;
            collider.GetComponent<Player>().OnBulletHit(hitDamage);

            //Efeito Visual
            if( this.beamContactEffect )
            {
                Vector3 playerPos = collider.GetComponent<Player>().transform.position;
                playerPos.x += transform.position.x;
                playerPos.x /= 2;

                GameObject.Instantiate(beamContactEffect, playerPos, Quaternion.identity);
            }
        }
            
        if (collider.GetComponent<Swarm>() != null)
        {
            collider.GetComponent<Swarm>().OnBulletHit(hitDamage);

            //Efeito Visual
            if (this.beamDieEffect)
            {
                GameObject.Instantiate(beamDieEffect, collider.GetComponent<Swarm>().transform.position, Quaternion.identity);
            }
        }
    }
}
