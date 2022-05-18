using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TransitionFadeInOut : MonoBehaviour
{
    [SerializeField] private Image blackFadeImage;
    [SerializeField] private float fadeSpeed=0.01f;
    private bool startFading;
    private bool swapToFadeOut;
    
    private void FixedUpdate()
    {
        if (!startFading) return;
        var tempColor = blackFadeImage.color;

        if (swapToFadeOut)
        {
            tempColor.a -= fadeSpeed;
            blackFadeImage.color = tempColor;
            
            if (!(tempColor.a <= 0)) return;
            startFading = false;
            swapToFadeOut = false;
            gameObject.SetActive(false);

            return;
        }
        
        if (tempColor.a>=1)
        {
            swapToFadeOut = true;
        }
        tempColor.a += fadeSpeed;
        blackFadeImage.color = tempColor;
    }

    public void StartFading()
    {
        startFading = true;
        blackFadeImage.gameObject.SetActive(true);
        var tempColor = blackFadeImage.color;
        tempColor.a = 0;
        blackFadeImage.color = tempColor;
    }
}
