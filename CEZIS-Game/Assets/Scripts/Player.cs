using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour {
    [Header("Player Stats")]
    [Tooltip("Player's movement speed")] public float moveSpeed = 1.5f;
    public float life = 100;

    private float _score = 0;
    private float _maxLife;

    [Header("Dodge Stats")]
    public GameObject dodgeEffect;
    private GameObject dodgeEffectObj = null;
    private DodgeEffects dodgeEffectScript = null;
    private DodgeReady dodgeReadyScript = null;
    public float dodgeDistance = 10f;
    public float dodgeCooldown = 10f;
    private float dodgeTimerCooldown = -1.0f;
    private float dodgeTimerDuration = -1.0f;

    [Header("Bullet Stats")]
    public Vector3 bulletSpawnPosition;
    public float gizmosSize = 0.5f;
    public float delayTime = 0.2f;
    public GameObject bulletPrefab;

    
    private float _currentDelay = 0;

    [Header("Swarm")]
    public GameObject SwarmPrefab;
    public float swarmSpawnDelay;
    private float _currentSwarmSpawnDelay;

    [Header("Damage")]
    public int TimesToBlink = 5;
    public float BlinkingTime = 0.1f;
    public AudioClip SoundWhenHit;
    private Renderer[] _renderers;

    [Header("Dependencies")]
    public GameObject GameOverCanvas;
    public HUD HUD;
    public Limits MapLimits;
    public AudioSource AudioSource;

    private void Awake()
    {
        _renderers = transform.GetComponentsInChildren<Renderer>();

        // Inicia Efeitos de Dodge
        if(dodgeEffect)
        {
            dodgeEffectObj = GameObject.Instantiate<GameObject>(dodgeEffect, transform.position, Quaternion.identity);
            dodgeEffectScript = dodgeEffectObj.GetComponentInChildren<DodgeEffects>();
            dodgeEffectScript.targetObj = gameObject;

            dodgeReadyScript = GetComponentInChildren<DodgeReady>();
        }
    }

    // Use this for initialization
    void Start () {
        _currentSwarmSpawnDelay = swarmSpawnDelay;

        SwarmPrefab.GetComponent<Swarm>().player = gameObject;

        HUD.SetScore(_score);
        _maxLife = life;
	}

    // Update is called once per frame
    void FixedUpdate()
    {
        //a, w, s, d
        Vector3 posInsideLimits; //Vai ser usada pra checar se o player está na tela
        float horizontalSpeed = Input.GetAxis("Horizontal");
        float verticalSpeed = Input.GetAxis("Vertical");
        if (this.dodgeTimerDuration >= 0)
            horizontalSpeed *= 10;

        Vector3 move = new Vector3(horizontalSpeed, 0, verticalSpeed);
        move *= Time.deltaTime * moveSpeed;
        transform.Translate(move);


        posInsideLimits = MapLimits.PointToMoveObj(transform.position);
        if (posInsideLimits != transform.position)
        {
            transform.position = posInsideLimits;
        }

        // tiro
        if (Input.GetKeyDown(KeyCode.Space) && _currentDelay <= 0)
        {
            GameObject.Instantiate(bulletPrefab, bulletSpawnPosition + transform.position, Quaternion.identity);
            bulletSpawnPosition.x *= -1;
            _currentDelay = delayTime;
        }

        // esquiva
        if (this.dodgeTimerDuration >= 0)
            this.dodgeTimerDuration -= Time.deltaTime;
        else
        {
            if (dodgeEffectScript)
                dodgeEffectScript.VFX_DisableTrails();
        }

        if (this.dodgeTimerCooldown >= 0)
        {
            this.dodgeTimerCooldown -= Time.deltaTime;
            this.dodgeReadyScript.VFX_Disable();
        }
        else
            this.dodgeReadyScript.VFX_Enable();

        if (Input.GetKeyDown(KeyCode.LeftControl) && this.dodgeTimerCooldown <= 0)
        {
            this.dodgeTimerDuration = this.dodgeDistance;
            this.dodgeTimerCooldown = this.dodgeCooldown;

            if (dodgeEffectScript)
                dodgeEffectScript.VFX_EnableTrails();
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

        if(_currentSwarmSpawnDelay > 0)
        {
            _currentSwarmSpawnDelay -= Time.deltaTime;
        }
        else
        {
            SwarmPrefab.transform.position = transform.position - new Vector3(0, 0, 5);
            GameObject.Instantiate(SwarmPrefab);
            _currentSwarmSpawnDelay = swarmSpawnDelay;
        }
    }

    public void OnBulletHit(float damage)
    {
        life -= damage;
        HUD.SetHP(life, _maxLife);
        StartCoroutine(Blink());
        AudioSource.PlayOneShot(SoundWhenHit);
    }

    //Chamada quando o Player morre
    private void Boom()
    {
        Time.timeScale = 0; //Pára o jogo
        GameOverCanvas.SetActive(true);
        HUD.gameObject.SetActive(false);
        Destroy(gameObject);
    }

    public void IncreaseScore(float scoreGained)
    {
        _score += scoreGained;
        HUD.SetScore(_score);
    }

    private void OnDrawGizmos()
    {
        Vector3 otherSpawnPosition = bulletSpawnPosition;
        otherSpawnPosition.x *= -1;
        Gizmos.color = Color.red;
        Gizmos.DrawWireSphere(bulletSpawnPosition + transform.position, gizmosSize);
        Gizmos.DrawWireSphere(otherSpawnPosition + transform.position, gizmosSize);
    }

    private IEnumerator Blink()
    {
        for (int i = 0; i < TimesToBlink; i++)
        {
            foreach (Renderer r in _renderers)
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
