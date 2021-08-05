using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DodgeShadow : MonoBehaviour {
    public float timeToFade = 0.3f;
    private float timerToFade;

    public Material mat1;
    public Material mat2;

    private float r;
    private float g;
    private float b;


	// Use this for initialization
	void Start () {
		
	}

    private void Awake()
    {
        timerToFade = timeToFade;

        this.r = mat1.color.r;
        this.g = mat1.color.g;
        this.b = mat1.color.b;
    }

    // Update is called once per frame
    void Update()
    {
        
        timerToFade -= Time.deltaTime;

        float factor = timerToFade / timeToFade;

        mat1.color = new Color(r,g,b, 0.8f * factor );
        mat2.color = new Color(r, g, b, 0.8f * factor );

        if (timerToFade < 0)
        {
            Destroy(gameObject);
        }
            
    }
}
