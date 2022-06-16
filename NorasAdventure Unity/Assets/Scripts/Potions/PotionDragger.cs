using System;
using UnityEngine;
using UnityEngine.UI;

namespace Potions
{
    public class PotionDragger : MonoBehaviour
    {
        [SerializeField]private Image potionImage;
        [SerializeField]private PotionData potion;

        private void Start()
        {
            if (potion==null)
            {
                gameObject.SetActive(false);
                potion = null;
                return;
            }
            gameObject.SetActive(true);
            potionImage.sprite = potion.potionIcon;
        }

        public void SetPotion(PotionData givenPotion=null)
        {
            //if we gave no potions, disable
            if (givenPotion==null)
            {
                gameObject.SetActive(false);
                potion = null;
                return;
            }
            gameObject.SetActive(true);
            potion = givenPotion;
            potionImage.sprite = potion.potionIcon;
        }
    }
}
