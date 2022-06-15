using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace PotionMaker
{
    public class PotionMakerManager : MonoBehaviour
    {
        [SerializeField] private GameObject mushroom;
        [SerializeField] private GameObject eyeball;
        [SerializeField] private GameObject purpleCrystal;
        [SerializeField] private GameObject redCrystal;
        [SerializeField] private GameObject greenPowder;
        [SerializeField] private GameObject yellowPowder;

        [SerializeField] private GameObject mushroomEyeballHighlight;
        [SerializeField] private GameObject crystalHighlight;
        [SerializeField] private GameObject powderHighlight;

        [SerializeField] private AudioSource potionCreatedAudioSource;
        [SerializeField] private GameObject potionCreatedScreen;
        [SerializeField] private Image potionCreatedBackground;
        [SerializeField] private Image potionCreatedIcon;

        [SerializeField] private PotionData[] potions;

        private int currentPhase;
        private List<Ingredient> chosenIngredients=new List<Ingredient>();
    
        public void AddPotionItem(int potionItemId)
        {
            switch (potionItemId)
            {
                //mushroom
                case 0:
                    if (currentPhase==0)
                    {
                        mushroom.SetActive(false);
                        mushroomEyeballHighlight.SetActive(false);
                        crystalHighlight.SetActive(true);
                        chosenIngredients.Add(Ingredient.Mushroom);
                        currentPhase++;
                    }
                    break;
                //eyeball
                case 1:
                    if (currentPhase==0)
                    {
                        eyeball.SetActive(false);
                        mushroomEyeballHighlight.SetActive(false);
                        crystalHighlight.SetActive(true);
                        chosenIngredients.Add(Ingredient.Eyeball);
                        currentPhase++;
                    }
                    break;
                //purpleCrystal
                case 2:
                    if (currentPhase==1)
                    {
                        purpleCrystal.SetActive(false);
                        crystalHighlight.SetActive(false);
                        powderHighlight.SetActive(true);
                        chosenIngredients.Add(Ingredient.PurpleCrystal);
                        currentPhase++;
                    }
                    break;
                //redCrystal
                case 3:
                    if (currentPhase==1)
                    {
                        redCrystal.SetActive(false);
                        crystalHighlight.SetActive(false);
                        powderHighlight.SetActive(true);
                        chosenIngredients.Add(Ingredient.RedCrystal);
                        currentPhase++;
                    }
                    break;
                //greenPowder
                case 4:
                    if (currentPhase==2)
                    {
                        chosenIngredients.Add(Ingredient.GreenPowder);
                        FindMatchingPotion();
                        potionCreatedAudioSource.Play();
                        ResetPotionMaker();
                    }
                    break;
                //yellowPowder
                case 5:
                    if (currentPhase==2)
                    {
                        chosenIngredients.Add(Ingredient.YellowPowder);
                        FindMatchingPotion();
                        potionCreatedAudioSource.Play();
                        ResetPotionMaker();
                    }
                    break;
            }
        }

        public void ResetPotionMaker()
        {
            currentPhase=0;
        
            mushroom.SetActive(true);
            eyeball.SetActive(true);
            purpleCrystal.SetActive(true);
            redCrystal.SetActive(true);
            greenPowder.SetActive(true);
            yellowPowder.SetActive(true);
        
            mushroomEyeballHighlight.SetActive(true);
            crystalHighlight.SetActive(false);
            powderHighlight.SetActive(false);
            
            chosenIngredients=new List<Ingredient>();
        }

        private void FindMatchingPotion()
        {
            foreach (var potion in potions)
            {
                if (!potion.IsMatchingRecipe(chosenIngredients)) continue;
                potionCreatedScreen.SetActive(true);
                potionCreatedBackground.sprite = potion.potionBackground;
                potionCreatedIcon.sprite = potion.potionIcon;
            }
        }
    
    }
}
