using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CoinsCounter : MonoBehaviour
{
    public static int coinsAmount;
    private Text coinsCounter;
    // Start is called before the first frame update
    void Start()
    {
       
        coinsCounter = GetComponent<Text>();
        coinsAmount = 0;
    }

    // Update is called once per frame
    void Update()
    {
        coinsCounter.text = "coins:  " + coinsAmount;
    }


}
