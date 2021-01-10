using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Text;
public class ScoreTextScript : MonoBehaviour
{
    public Text text; 
    public static int coinAmount;

    void Start()
    {
        text = GetComponent<Text>();
        Debug.Log("in start score!");
    }
    void Update()
    {
        text.text = coinAmount.ToString();
        Debug.Log("in update score!");
    }
}



