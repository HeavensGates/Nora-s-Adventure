using System;
using UnityEngine;

namespace Potions.PotionEffectProcessors
{
    public class NoraPotionEffectProcessor : BasePotionEffectProcessor
    {
        [SerializeField] private AudioSource audioSource;

        [Header("Nora Noises")] [SerializeField]
        private AudioClip noraAuch;

        [SerializeField] private AudioClip noraCurious1,
            noraCurious2,
            noraFrustrated1,
            noraFrustrated2,
            noraHmhm1,
            noraHmhm2,
            noraHuh,
            noraIrritated1,
            noraIrritated2,
            noraOh1,
            noraOh2,
            noraQuestion1,
            noraQuestion2,
            noraWii1,
            noraWii2;

        public override void ProcessEffect(PotionData potionData)
        {
            switch (potionData.potionEffect)
            {
                case PotionEffect.GhostPotion:
                    //nora becomes ghost
                    currentPotionEffect = PotionEffect.GhostPotion;
                    PlayAudioClip(noraWii2);
                    break;
                case PotionEffect.AcidPotion:
                    //doesnt work
                    PlayAudioClip(noraFrustrated1);
                    break;
                case PotionEffect.StrengthPotion:
                    currentPotionEffect = PotionEffect.StrengthPotion;
                    PlayAudioClip(noraIrritated2);
                    //strong nora
                    break;
                case PotionEffect.FirePotion:
                    //doesnt work
                    PlayAudioClip(noraIrritated1);
                    break;
                case PotionEffect.LevitationPotion:
                    //nora fly
                    currentPotionEffect = PotionEffect.LevitationPotion;
                    PlayAudioClip(noraWii1);
                    break;
                case PotionEffect.GrowthPotion:
                    //nora grow in size
                    currentPotionEffect = PotionEffect.GrowthPotion;
                    PlayAudioClip(noraIrritated2);
                    break;
                case PotionEffect.ShrinkingPotion:
                    //nora small
                    currentPotionEffect = PotionEffect.ShrinkingPotion;
                    PlayAudioClip(noraOh2);
                    break;
                case PotionEffect.FreezingPotion:
                    PlayAudioClip(noraFrustrated1);
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

        private void PlayAudioClip(AudioClip audioClip)
        {
            audioSource.clip = audioClip;
            audioSource.Play();
        }

        public bool DestroyPotion(PotionData potionData)
        {
            return potionData.potionEffect switch
            {
                PotionEffect.GhostPotion => true,
                PotionEffect.AcidPotion => false,
                PotionEffect.StrengthPotion => true,
                PotionEffect.FirePotion => false,
                PotionEffect.LevitationPotion => true,
                PotionEffect.GrowthPotion => true,
                PotionEffect.ShrinkingPotion => true,
                PotionEffect.FreezingPotion => false,
                PotionEffect.ClearPotion => false,
                _ => false
            };
        }
    }
}