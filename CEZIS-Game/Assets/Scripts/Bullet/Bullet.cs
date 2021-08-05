using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bullet : MonoBehaviour {
    public float speed = 1f;
    public Vector3 direction = Vector3.forward;
    public float timeToLive = 10f;
    public GameObject destroyEffect;
    public GameObject birthEffect;

    private bool isBirthEffectCast = false;
    private float timeToDestroy = 1f;
    private bool isDestroying = false;

    // Use this for initialization
    void Start () {
 
    }

    // Update is called once per frame
    void FixedUpdate () {
        transform.Translate( this.direction.normalized * speed * Time.deltaTime);

        if(isBirthEffectCast==false)
        {
            this.isBirthEffectCast = true;
            if (birthEffect)
            {
                GameObject.Instantiate(birthEffect, transform.position, Quaternion.identity);
            }
        }
    }

    void Update()
    {
        timeToLive -= Time.deltaTime;
        if (timeToLive <= 0)
        {
            if( isDestroying == false )
            {
                setToDestroy(false);
            }
        }

        if( isDestroying == true )
        {
            timeToDestroy -= Time.deltaTime;

            if (timeToDestroy <= 0)
            {
                Destroy(gameObject);
            }
        }
    }

    protected void setToDestroy()
    {
        setToDestroy(true);
    }

    protected void setToDestroy( bool haveDieFx )
    {
        this.GetComponent<Collider>().enabled = false;
        this.transform.localScale *= 0;
        this.speed = 0;

        this.isDestroying = true;

        if(haveDieFx == true )
        {
            DieFX();
        }
    }


    protected void DieFX()
    {
        if (destroyEffect)
        {
           GameObject.Instantiate(destroyEffect, transform.position, Quaternion.identity);
        }
    }
}
