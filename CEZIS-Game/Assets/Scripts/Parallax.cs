using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Parallax : MonoBehaviour {
    public float Speed = 1f;
    public GameObject PlanePrefab;
    [Tooltip("O tamanho do plano em z")] public float PlaneLength = 1000;

    private void OnValidate()
    {
        if(transform.GetChildCount() == 0)
        {
            InstantiatePlane(0);
        }
    }

    // Use this for initialization
    void Awake()
    {
    }
	
	// Update is called once per frame
	void Update () {
        Transform child = transform.GetChild(0);
        child.Translate(Vector3.back * Speed * Time.deltaTime);

        if (child.position.z <= -PlaneLength/2) InstantiatePlane(PlaneLength);
    }

    private void InstantiatePlane(float distanceFromCenter)
    {
        Instantiate(PlanePrefab, new Vector3(transform.position.x, transform.position.y, distanceFromCenter), Quaternion.identity, transform);
        if (transform.childCount > 1)
        {
            Destroy(transform.GetChild(0).gameObject);
        }
    }
}
