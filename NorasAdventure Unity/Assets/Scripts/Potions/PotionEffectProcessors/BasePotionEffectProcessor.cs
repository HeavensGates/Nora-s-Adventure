using Potions;
using UnityEngine;

namespace PotionEffectProcessors
{
    public class BasePotionEffectProcessor : MonoBehaviour
    {
        [SerializeField]protected PotionEffect currentPotionEffect;
        public virtual void ProcessEffect(PotionData potionData)
        {
            Debug.LogWarning("You should not see this, make sure you are using the correct effect processor");
        }

        public virtual bool DestroyPotion(PotionData potionData)
        {
            return false;
        }

        #region PotionEffects

        public virtual void GhostEffect()
        {
        }
        
        public virtual void AcidEffect()
        {
        }
        
        public virtual void StrengthEffect()
        {
        }
        
        public virtual void FireEffect()
        {
        }
        
        public virtual void LevitateEffect()
        {
        }
        
        public virtual void GrowthEffect()
        {
        }
        
        public virtual void BuffEffect()
        {
        }

        public virtual void ShrinkEffect()
        {
        }
        
        public virtual void FreezingEffect()
        {

        }
        
        public virtual void ClearPotionEffect()
        {
        }

        #endregion
    }
}
