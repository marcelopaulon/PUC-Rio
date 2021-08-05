using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Music : MonoBehaviour {
    public AudioSource AudioSource;
    public AudioClip gameMusic;

    // Use this for initialization
    void Start () {
		
	}

    private void Awake()
    {
        
    }

    // Update is called once per frame
    void Update () {
		if(AudioSource.isPlaying == false )
        {
            AudioSource.PlayOneShot(gameMusic);
        }
	}
}
