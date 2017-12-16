using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Limits : MonoBehaviour {
    public BoxCollider LimitCollider;

    /// <summary>
    /// Checa o ponto mais próximo dentro dos limites a partir de onde o transform se encontra.
    /// Se estiver dentro do mesmo, retorna a posição do mesmo.
    /// </summary>
    public Vector3 PointToMoveObj(Vector3 position)
    {
        //Se ponto dentro do collider, retorna ele mesmo
        if (LimitCollider.bounds.Contains(position))
        {
            return position;
        }

        //Checa x
        if (LimitCollider.bounds.max.x < position.x)
        {
            position.x = LimitCollider.bounds.max.x;
        }

        else if (LimitCollider.bounds.min.x > position.x)
        {
            position.x = LimitCollider.bounds.min.x;
        }

        //Checa y
        if (LimitCollider.bounds.max.y < position.y)
        {
            position.y = LimitCollider.bounds.max.y;
        }

        else if (LimitCollider.bounds.min.y > position.y)
        {
            position.y = LimitCollider.bounds.min.y;
        }

        //Checa z
        if (LimitCollider.bounds.max.z < position.z)
        {
            position.z = LimitCollider.bounds.max.z;
        }

        else if (LimitCollider.bounds.min.z > position.z)
        {
            position.z = LimitCollider.bounds.min.z;
        }

        return position;
    }
}
