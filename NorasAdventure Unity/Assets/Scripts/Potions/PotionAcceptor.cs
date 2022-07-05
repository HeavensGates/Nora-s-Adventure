using System.Collections;
using System.Collections.Generic;
using Potions;
using Potions.PotionEffectProcessors;
using UnityEngine;

public class PotionAcceptor : MonoBehaviour
{
   [SerializeField]private BasePotionEffectProcessor basePotionEffectProcessor;

   public void AcceptPotion(PotionData givenPotion)
   {
      basePotionEffectProcessor.ProcessEffect(givenPotion);
   }
}
