using UnityEngine;
using UnityEngine.UI;

public class StartGameButton : MonoBehaviour
{
    [SerializeField] private Image blackFadeImage;
    [SerializeField] private float fadeSpeed=0.01f;
    private bool startSceneSwap = false;
    public void StartGame()
    {
        Debug.Log("Starting scene");
        startSceneSwap = true;
    }

    private void FixedUpdate()
    {
        if (startSceneSwap)
        {
            if (blackFadeImage.color.a>=1)
            {
                LoadScene.LoadSceneByName("GameScene");
            }
            Color tempColor = blackFadeImage.color;
            tempColor.a += fadeSpeed;
            blackFadeImage.color = tempColor;
        }
    }
}
