using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Enemy : MonoBehaviour {
    [Header("Stats")]
    public float life = 100f;
    public float energy = 40f;

    public float tendency = 0f;
    public float speed = 0.1f;

    private float _maxlife;

    [Tooltip("Score player gains when enemy is killed")] public float score = 10;

    [Header("Dependencies")]
    public GameObject enemyShield;
    public Limits mapLimits;
    public GameObject player;
    public HUD HUD;
    private Renderer[] _renderers;

    [Header("Blink")]
    public int TimesToBlink = 5;
    public float BlinkingTime = 0.1f;

    [Header("Others")]
    public Vector3 offsetFromPlayer;
    private Player playerScript;

    private Vector3 sugestPos;
    public bool arrivedDestination = false;

    public SensorController sensorController;
    public WeaponSystem weaponSystem;

    private void Awake()
    {
        _renderers = transform.GetComponentsInChildren<Renderer>();
    }

    // Use this for initialization
    void Start () {
        sugestPos = transform.position;
        playerScript = player.GetComponent<Player>();
        _maxlife = life;
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
        HUD.SetHP(life, _maxlife);
        StartCoroutine(Blink());
    }

    //Chamada quando o inimigo morre
    private void Boom()
    {
        player.GetComponent<Player>().IncreaseScore(score);
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
        this.sugestPos = mapLimits.PointToMoveObj(sugestPos + offsetFromPlayer);
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

    private IEnumerator Blink()
    {
        for (int i = 0; i < TimesToBlink; i++)
        {
            foreach(Renderer r in _renderers)
            {
                r.enabled = false;
            }
            yield return new WaitForSeconds(BlinkingTime);

            foreach (Renderer r in _renderers)
            {
                r.enabled = true;
            }
            yield return new WaitForSeconds(BlinkingTime);
        }
    }
}
