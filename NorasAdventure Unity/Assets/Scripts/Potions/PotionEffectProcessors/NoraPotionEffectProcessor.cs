using System;
using Potions;
using UnityEngine;

namespace PotionEffectProcessors
{
    public class NoraPotionEffectProcessor : BasePotionEffectProcessor
    {
        [SerializeField] private Animator animator;
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

        private static readonly int IsBuff = Animator.StringToHash("isBuff");
        private static readonly int IsGhost = Animator.StringToHash("isGhost");
        private static readonly int IsLevitating = Animator.StringToHash("isLevitating");

        [SerializeField]private Vector2 noraDefaultSize;
        [SerializeField] private Vector2 noraShrinkedSize=new Vector2(100,200);
        [SerializeField] private Vector2 noraGrowthedSize=new Vector2(400,800);
        [SerializeField] private Vector2 noraLevitateSize = new Vector2(282.67f, 580.75f);
        [SerializeField]private RectTransform rectTransform;

        private void Start()
        {
            noraDefaultSize = rectTransform.sizeDelta;
        }

        public override void ProcessEffect(PotionData potionData)
        {
            switch (potionData.potionEffect)
            {
                case PotionEffect.GhostPotion:
                    GhostEffect();
                    break;
                case PotionEffect.AcidPotion:
                    PlayAudioClip(noraFrustrated1);
                    break;
                case PotionEffect.StrengthPotion:
                    BuffEffect();
                    break;
                case PotionEffect.FirePotion:
                    PlayAudioClip(noraIrritated1);
                    break;
                case PotionEffect.LevitationPotion:
                    LevitateEffect();
                    break;
                case PotionEffect.GrowthPotion:
                    GrowthEffect();
                    break;
                case PotionEffect.ShrinkingPotion:
                    ShrinkEffect();
                    break;
                case PotionEffect.FreezingPotion:
                    PlayAudioClip(noraFrustrated1);
                    break;
                case PotionEffect.ClearPotion:
                    ClearPotionEffect();
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

        public static bool DestroyPotion(PotionData potionData)
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
        private void ResetNora()
        {
            animator.SetBool(IsBuff, false);
            animator.SetBool(IsGhost, false);
            animator.SetBool(IsLevitating, false);
            gameObject.GetComponent<RectTransform>().sizeDelta = noraDefaultSize;
        }

        #region PotionEffects

        public override void ClearPotionEffect()
        {
            //removes effect
            ResetNora();
            currentPotionEffect = PotionEffect.ClearPotion;
        }


        public override void BuffEffect()
        {
            ResetNora();
            animator.SetBool(IsBuff,true);
            currentPotionEffect = PotionEffect.StrengthPotion;
            PlayAudioClip(noraIrritated2);
        }

        public override void GhostEffect()
        {
            ResetNora();
            animator.SetBool(IsGhost,true);
            currentPotionEffect = PotionEffect.GhostPotion;
            PlayAudioClip(noraWii2);
        }
        
        public override void LevitateEffect()
        {
            ResetNora();
            animator.SetBool(IsLevitating,true);
            rectTransform.sizeDelta =noraLevitateSize;
            currentPotionEffect = PotionEffect.LevitationPotion;
            PlayAudioClip(noraWii1);
        }

        public override void GrowthEffect()
        {
            ResetNora();
            rectTransform.sizeDelta = noraGrowthedSize;
            currentPotionEffect = PotionEffect.GrowthPotion;
            PlayAudioClip(noraIrritated2);
        }

        public override void ShrinkEffect()
        {
            ResetNora();
            rectTransform.sizeDelta =noraShrinkedSize;
            currentPotionEffect = PotionEffect.ShrinkingPotion;
            PlayAudioClip(noraIrritated2);
        }

        #endregion
        
    }
}