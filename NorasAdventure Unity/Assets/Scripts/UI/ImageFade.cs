using UnityEngine;
using UnityEngine.UI;

public class ImageFade : MonoBehaviour
{
    [SerializeField] private Image blackFadeImage;
    [SerializeField] private float fadeSpeed=0.01f;
    [SerializeField] private bool fadeOnStart;
    [SerializeField] private bool startFading;
    
    private void FixedUpdate()
    {
        if (!fadeOnStart && !startFading) return;
        var tempColor = blackFadeImage.color;
        if (tempColor.a<=0)
        {
            blackFadeImage.gameObject.SetActive(false);
            fadeOnStart = false;
            startFading = false;
        }
        tempColor.a += fadeSpeed;
        blackFadeImage.color = tempColor;
    }
}
