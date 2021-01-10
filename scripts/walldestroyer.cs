using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class walldestroyer : MonoBehaviour
{
    
    
    public void OnTriggerEnter2D(Collider2D other)
    {
        if (other.gameObject.CompareTag("wall"))
        {
            Destroy(other.gameObject);
          

        }
    }
   

}


