using System;
using UnityEngine;

namespace Potions.PotionEffectProcessors
{
    public class NoraPotionEffectProcessor : BasePotionEffectProcessor
    {
        public override void ProcessEffect(PotionData potionData)
        {
            switch (potionData.potionEffect)
            {
                case PotionEffect.GhostPotion:
                    //nora becomes ghost
                    currentPotionEffect = PotionEffect.GhostPotion;
                    break;
                case PotionEffect.AcidPotion:
                    //doesnt work
                    break;
                case PotionEffect.StrengthPotion:
                    currentPotionEffect = PotionEffect.StrengthPotion;
                    //strong nora
                    break;
                case PotionEffect.FirePotion:
                    //doesnt work
                    break;
                case PotionEffect.LevitationPotion:
                    //nora fly
                    currentPotionEffect = PotionEffect.LevitationPotion;
                    break;
                case PotionEffect.GrowthPotion:
                    //nora grow in size
                    currentPotionEffect = PotionEffect.GrowthPotion;
                    break;
                case PotionEffect.ShrinkingPotion:
                    //nora small
                    currentPotionEffect = PotionEffect.ShrinkingPotion;
                    break;
                case PotionEffect.FreezingPotion:
                    //doesnt work
                    break;
                case PotionEffect.ClearPotion:
                    //removes effect
                    currentPotionEffect = PotionEffect.ClearPotion;
                    break;
                default:
                    throw new ArgumentOutOfRangeException();
            }
        }
    }
}