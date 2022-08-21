using System;
using Potions;
using UnityEngine;

namespace PotionEffectProcessors
{
    public class RiverPotionEffectProcessor : BasePotionEffectProcessor
    {
        [SerializeField] private Animator animator;

        private bool isCleared;
        
        private static readonly int RiverFrozen = Animator.StringToHash("RiverFrozen");

        public override void ProcessEffect(PotionData potionData)
        {
            if (isCleared)
                return;
            switch (potionData.potionEffect)
            {
                case PotionEffect.GhostPotion:
                    //doesnt work
                    break;
                case PotionEffect.AcidPotion:
                    //melt toad into puddle, can pass
                    AcidEffect();
                    break;
                case PotionEffect.StrengthPotion:
                    //toad strong, cant pass
                    StrengthEffect();
                    break;
                case PotionEffect.FirePotion:
                    //toad dead, can pass
                    FireEffect();
                    break;
                case PotionEffect.LevitationPotion:
                    //toad is levitated, doesnt help
                    LevitateEffect();
                    break;
                case PotionEffect.GrowthPotion:
                    //toad more dangerous
                    GrowthEffect();
                    break;
                case PotionEffect.ShrinkingPotion:
                    ShrinkEffect();
                    break;
                case PotionEffect.FreezingPotion:
                    //freeze frog but no benefit
                    FreezingEffect();
                    break;
                case PotionEffect.ClearPotion:
                    break;
                default:
                    throw new ArgumentOutOfRangeException();
            }
        }

        //Doesnt work, just sizzles
        public override void FireEffect()
        {
            currentPotionEffect = PotionEffect.FirePotion;
        }
        public override void FreezingEffect()
        {
            animator.SetBool(RiverFrozen, true);
            currentPotionEffect = PotionEffect.FreezingPotion;
            isCleared = true;
        }

        public override bool DestroyPotion(PotionData potionData)
        {
            return potionData.potionEffect switch
            {
                PotionEffect.GhostPotion => false,
                PotionEffect.AcidPotion => false,
                PotionEffect.StrengthPotion => false,
                PotionEffect.FirePotion => true,
                PotionEffect.LevitationPotion => false,
                PotionEffect.GrowthPotion => false,
                PotionEffect.ShrinkingPotion => false,
                PotionEffect.FreezingPotion => true,
                PotionEffect.ClearPotion => false,
                _ => false
            };
        }
    }
}
