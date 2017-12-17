using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class Weapon : MonoBehaviour {

    public float reloadTime;
    private float _reloadTime = 0;

    [HideInInspector]public bool isReady = false;

    [Header("Bullet Stats")]
    public GameObject bulletPrefab;
    public Vector3 bulletSpawnPosition;

    // Use this for initialization
    void Awake() {
        _reloadTime = reloadTime;
    }

    // Update is called once per frame
    void Update() {
        if (_reloadTime > 0)
            _reloadTime -= Time.deltaTime;
        else
            isReady = true;
    }

    protected void Reload()
    {
        isReady = false;
        _reloadTime = reloadTime;
    }

    protected void ResetReloadCooldown()
    {
        _reloadTime = 0;
        isReady = true;
    }

    public void Fire()
    {
        if(isReady)
        {
            _fire();
            Reload();
        }
    }

    public abstract void _fire();
}
