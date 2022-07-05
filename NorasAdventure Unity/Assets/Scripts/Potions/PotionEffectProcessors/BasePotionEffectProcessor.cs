using UnityEngine;

namespace Potions.PotionEffectProcessors
{
    public class BasePotionEffectProcessor : MonoBehaviour
    {
        [SerializeField]protected PotionEffect currentPotionEffect;
        public virtual void ProcessEffect(PotionData potionData)
        {
            Debug.LogWarning("You should not see this, make sure you are using the correct effect processor");
        }
    }
}
