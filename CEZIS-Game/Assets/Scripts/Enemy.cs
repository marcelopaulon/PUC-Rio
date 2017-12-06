using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Enemy : MonoBehaviour {
    public float life = 100f;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		if(life <= 0)
        {
            Boom();
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
