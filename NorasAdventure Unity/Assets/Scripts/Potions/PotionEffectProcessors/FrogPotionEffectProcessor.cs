using System;

namespace Potions.PotionEffectProcessors
{
    public class FrogPotionEffectProcessor : BasePotionEffectProcessor
    {
        public override void ProcessEffect(PotionData potionData)
        {
            switch (potionData.potionEffect)
            {
                case PotionEffect.GhostPotion:
                    //doesnt work
                    break;
                case PotionEffect.AcidPotion:
                    //melt toad into puddle, can pass
                    break;
                case PotionEffect.StrengthPotion:
                    //toad strong, cant pass
                    break;
                case PotionEffect.FirePotion:
                    //toad dead, can pass
                    break;
                case PotionEffect.LevitationPotion:
                    //toad is levitated, doesnt help
                    break;
                case PotionEffect.GrowthPotion:
                    //toad more dangerous
                    break;
                case PotionEffect.ShrinkingPotion:
                    //shrink frog, isnt a threat, can pass
                    break;
                case PotionEffect.FreezingPotion:
                    //freeze frog but no benefit
                    break;
                case PotionEffect.ClearPotion:
                    break;
                default:
                    throw new ArgumentOutOfRangeException();
            }
        }
    }
}
