using System.Collections;
using System.Collections.Generic;
using PotionEffectProcessors;
using Potions;
using UnityEngine;

public class PotionAcceptor : MonoBehaviour
{
   [SerializeField]private BasePotionEffectProcessor basePotionEffectProcessor;

   public void AcceptPotion(PotionData givenPotion)
   {
      basePotionEffectProcessor.ProcessEffect(givenPotion);
   }
}
