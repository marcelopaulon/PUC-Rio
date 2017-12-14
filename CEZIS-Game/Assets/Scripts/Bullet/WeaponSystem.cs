using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WeaponSystem : MonoBehaviour {

    public Dictionary<string, Weapon> weaponList;

	// Use this for initialization
	void Awake () {
        weaponList = new Dictionary<string, Weapon>();

		foreach(Transform child in transform)
        {
            if (child.GetComponent<Weapon>() != null)
            {
                print(child.name);
                weaponList.Add(child.name, child.GetComponent<Weapon>());
            }
        }
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
