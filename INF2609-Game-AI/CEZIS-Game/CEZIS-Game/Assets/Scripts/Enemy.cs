using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Enemy : MonoBehaviour {
    [Header("Stats")]
    public float life = 100f;
    public float maxEnergy = 100f;
    private float _energy = 0f;

    public float tendency = 0f;
    public float speed = 0.1f;

    public float delayBetweenAreaAttacks = 3f;
    private float timerBetweenAreaAttacks = 0f;

    private float _maxlife;

    [Tooltip("Score player gains when enemy is killed")] public float score = 10;

    [Header("Dependencies")]
    public GameObject enemyShield;
    public Limits mapLimits;
    public GameObject player;
    public HUD HUD;
    private Renderer[] _renderers;

    [Header("Damage")]
    public int TimesToBlink = 5;
    public float BlinkingTime = 0.1f;

    [Header("Others")]
    public Vector3 offsetFromPlayer;
    private Player playerScript;

    private Vector3 sugestPos;
    public bool arrivedDestination = false;

    public SensorController sensorController;
    public WeaponSystem weaponSystem;

    public GameObject shieldInstance = null;

    [Header("Energy Indicator Colors")]
    public Material energyIndicatorMaterial;
    public float red = 1.0f;
    public float green = 0f;
    public float blue = 0f;
    public float alpha = 1.0f;



    private void Awake()
    {
        _renderers = transform.GetComponentsInChildren<Renderer>();
        _energy = 0;
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

        gainEnergy(Time.deltaTime * 2.0f);


        // Atualiza o indicador
        float factor = this.getEnergyFactor();
        float redFactor = factor * 3.0f;
        if (redFactor > 1.0f)
            redFactor = 1.0f;
        float blueFactor = factor - 0.5f;
        if (blueFactor < 0)
            blueFactor = 0;
        else
            blueFactor *= 2;

        if (energyIndicatorMaterial)
        {
            energyIndicatorMaterial.color = new Color(redFactor * this.red, factor * this.green, blueFactor * this.blue, 1.0f);
        }
    }

    private void FixedUpdate()
    {
        if (transform.position == sugestPos)
            arrivedDestination = true;
        else
            arrivedDestination = false;

        transform.position = Vector3.MoveTowards(transform.position, sugestPos, speed);

        // Area Attack Timer ( Timer entre ataques em area, para evitar combos muito fortes )
        if (this.timerBetweenAreaAttacks >= 0)
            this.timerBetweenAreaAttacks -= Time.deltaTime;
    }

    public void OnBulletHit(float damage, bool shield = false)
    {
        life -= damage;
        HUD.SetHP(life, _maxlife);

        if (shield == false)
        {
            StartCoroutine(Blink());
            addDefenseTendency(0.1f);
        }
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
        if (tendency - ammount < -1f)
            tendency = -1f;
        else
            tendency -= ammount;
    }

    public bool useEnergy(float ammount)
    {
        if (_energy - ammount >= 0)
        {
            _energy -= ammount;
            return true;
        }

        return false;
    }

    public void gainEnergy( float ammount )
    {
        _energy += ammount;
        if (_energy > maxEnergy)
            _energy = maxEnergy;
    }

    public float getEnergy()
    {
        return this._energy;
    }

    public float getEnergyFactor()
    {
        float factor = _energy / maxEnergy;
        if (factor < 0)
            factor = 0;
        else if (factor > 1.0f)
            factor = 1.0f;

        return factor;
    }

    public void moveTo(Vector3 sugestPos)
    {
        Vector3 newPos = mapLimits.PointToMoveObj(sugestPos);
        this.sugestPos.x = newPos.x;
        this.sugestPos.z = newPos.z;
          
    }

    public void activateShield(int type)
    {
        if (shieldInstance == null)
        {
            switch (type)
            {
                case 0:
                    if (useEnergy(30))
                    {
                        enemyShield.GetComponent<EnemyShield>().type = type;
                        shieldInstance = Instantiate(enemyShield, transform);
                    }
                    break;
                case 1:
                    if (useEnergy(40))
                    {
                        enemyShield.GetComponent<EnemyShield>().type = type;
                        shieldInstance = Instantiate(enemyShield, transform);
                    }
                    break;
                case 2:
                    if (useEnergy(50))
                    {
                        enemyShield.GetComponent<EnemyShield>().type = type;
                        shieldInstance = Instantiate(enemyShield, transform);
                    }
                    break;
            }
        }
        
    }

    public float randomNumber(float min, float max)
    {
        return Random.Range(min, max);
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

    public bool IsAreaAttackDelayFinished( )
    {
        if (this.timerBetweenAreaAttacks <= 0)
            return true;
        else
            return false;
    }

    public void StartAreaAttackTimer()
    {
        this.timerBetweenAreaAttacks = this.delayBetweenAreaAttacks;
    }

}
