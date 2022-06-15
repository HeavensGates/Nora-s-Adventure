using System.Collections.Generic;
using System.Linq;
using UnityEngine;

namespace PotionMaker
{
    [CreateAssetMenu(menuName ="ScriptableObject/PotionData")]
    public class PotionData : ScriptableObject
    {
        public Ingredient[] recipe;
        public Sprite potionIcon;
        public Sprite potionBackground;

        public bool IsMatchingRecipe(IEnumerable<Ingredient> inputRecipe)
        {
            return inputRecipe.All(ingredient => recipe.Contains(ingredient));
        }
    }
}


