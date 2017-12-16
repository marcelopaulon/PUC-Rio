using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HUD : MonoBehaviour {
    public Text ScoreNumberText;
    public Image HPBar;

    public void SetHP(float currentHP, float maxHP)
    {
        HPBar.fillAmount = currentHP / maxHP;
    }

    public void SetScore(float score)
    {
        ScoreNumberText.text = score.ToString();
    }
}
