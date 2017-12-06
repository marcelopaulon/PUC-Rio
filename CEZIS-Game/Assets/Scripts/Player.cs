using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour {
    [Header("Player Stats")]
    [Tooltip("Player's movement speed")] public float moveSpeed = 1.5f;
    public float life = 100;

    [Header("Bullet Stats")]
    public Vector3 bulletSpawnPosition;
    public float gizmosSize = 0.5f;
    public float delayTime = 0.2f;
    public GameObject bulletPrefab;


    private float _currentDelay = 0;

    // Use this for initialization
    void Start () {
		
	}
	
    // Update is called once per frame
	void FixedUpdate () {
        //a, w, s, d
        Vector3 move = new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical"));
        move *= Time.deltaTime * moveSpeed;

        transform.Translate(move);

        // tiro
        if (Input.GetKeyDown(KeyCode.Space) && _currentDelay <= 0)
        {
            GameObject.Instantiate(bulletPrefab, bulletSpawnPosition + transform.position, Quaternion.identity);
            bulletSpawnPosition.x *= -1;
            _currentDelay = delayTime;
        }

        // defesa
	}

    private void Update()
    {
        if (_currentDelay > 0)
        {
            _currentDelay -= Time.deltaTime;
        }
    }

    public void OnBulletHit(float damage)
    {
        life -= damage;
    }

    private void OnDrawGizmos()
    {
        Vector3 otherSpawnPosition = bulletSpawnPosition;
        otherSpawnPosition.x *= -1;
        Gizmos.color = Color.red;
        Gizmos.DrawWireSphere(bulletSpawnPosition, gizmosSize);
        Gizmos.DrawWireSphere(otherSpawnPosition, gizmosSize);
    }
}
