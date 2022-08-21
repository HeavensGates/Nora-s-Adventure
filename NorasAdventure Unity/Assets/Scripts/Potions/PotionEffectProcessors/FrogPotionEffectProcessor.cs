using System;
using Potions;
using UnityEngine;
using UnityEngine.UI;

namespace PotionEffectProcessors
{
    public class FrogPotionEffectProcessor : BasePotionEffectProcessor
    {
        [SerializeField] private Animator animator;
        [SerializeField] private AudioSource audioSource;
        [SerializeField] private Image signImage;
        
        [Header("Frog Noises")] [SerializeField]
        private AudioClip frog;

        [SerializeField] private AudioClip frog1,
            frog2,
            frogAngry,
            frogAngry2,
            frogCryLong,
            frogCryLong2,
            frogCryShort,
            frogCryShort2;
        
        [Header("Sizes")]
        [SerializeField]private Vector2 defaultSize;
        [SerializeField] private Vector2 shrinkedSize=new Vector2(100,200);
        [SerializeField] private Vector2 growthedSize=new Vector2(400,800);
        [SerializeField] private Vector2 levitateSize = new Vector2(282.67f, 580.75f);
        [SerializeField]private RectTransform rectTransform;

        private bool isCleared;
        
        private static readonly int IsMelted = Animator.StringToHash("isMelted");
        private static readonly int IsAngry = Animator.StringToHash("isAngry");
        private static readonly int IsLevitating = Animator.StringToHash("isLevitating");
        private static readonly int IsFrozen = Animator.StringToHash("isFrozen");
        private static readonly int IsBurnt = Animator.StringToHash("isBurnt");
        
        private void Start()
        {
            defaultSize = rectTransform.sizeDelta;
        }
        
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

        public override void AcidEffect()
        {
            ResetChar();
            animator.SetBool(IsMelted,true);
            currentPotionEffect = PotionEffect.AcidPotion;
            PlayAudioClip(frogCryLong);
            signImage.raycastTarget = true;
            isCleared = true;
        }

        public override void StrengthEffect()
        {
            ResetChar();
            animator.SetBool(IsAngry,true);
            currentPotionEffect = PotionEffect.StrengthPotion;
            PlayAudioClip(frogAngry2);
        }

        public override void FireEffect()
        {
            ResetChar();
            animator.SetBool(IsBurnt,true);
            currentPotionEffect = PotionEffect.FirePotion;
            PlayAudioClip(frogCryLong2);
            signImage.raycastTarget = true;
            isCleared = true;
        }

        public override void LevitateEffect()
        {
            ResetChar();
            animator.SetBool(IsLevitating,true);
            currentPotionEffect = PotionEffect.LevitationPotion;
            PlayAudioClip(frogCryShort);
        }

        public override void GrowthEffect()
        {
            ResetChar();
            rectTransform.sizeDelta = growthedSize;
            currentPotionEffect = PotionEffect.GrowthPotion;
            PlayAudioClip(frogAngry2);
        }

        public override void ShrinkEffect()
        {
            ResetChar();
            rectTransform.sizeDelta = shrinkedSize;
            currentPotionEffect = PotionEffect.ShrinkingPotion;
            PlayAudioClip(frogAngry);
            signImage.raycastTarget = true;
            isCleared = true;
        }

        public override void FreezingEffect()
        {
            ResetChar();
            animator.SetBool(IsFrozen,true);
            currentPotionEffect = PotionEffect.FreezingPotion;
            PlayAudioClip(frog);
            signImage.raycastTarget = true;
            isCleared = true;
        }

        private void ResetChar()
        {
            animator.SetBool(IsLevitating, false);
            gameObject.GetComponent<RectTransform>().sizeDelta = defaultSize;
        }

        public override bool DestroyPotion(PotionData potionData)
        {
            return potionData.potionEffect switch
            {
                PotionEffect.GhostPotion => false,
                PotionEffect.AcidPotion => true,
                PotionEffect.StrengthPotion => true,
                PotionEffect.FirePotion => true,
                PotionEffect.LevitationPotion => true,
                PotionEffect.GrowthPotion => true,
                PotionEffect.ShrinkingPotion => true,
                PotionEffect.FreezingPotion => true,
                PotionEffect.ClearPotion => false,
                _ => false
            };
        }
        
        private void PlayAudioClip(AudioClip audioClip)
        {
            audioSource.clip = audioClip;
            audioSource.Play();
        }
    }
}
