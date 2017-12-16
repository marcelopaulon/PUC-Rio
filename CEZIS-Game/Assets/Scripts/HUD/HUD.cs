using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HUD : MonoBehaviour {
    public Text ScoreNumberText;
    public Image HPBar;
    public Color _startColor;

    private void Start()
    {
        _startColor = HPBar.color;
    }

    public void SetHP(float currentHP, float maxHP)
    {
        HPBar.fillAmount = currentHP / maxHP;

        if(HPBar.fillAmount > 0.5)
        {
            HPBar.color = _startColor;
        }

        else if(HPBar.fillAmount > 0.25)
        {
            HPBar.color = Color.yellow;
        }

        else
        {
            HPBar.color = Color.red;
        }
    }

    public void SetScore(float score)
    {
        ScoreNumberText.text = score.ToString();
    }
}
