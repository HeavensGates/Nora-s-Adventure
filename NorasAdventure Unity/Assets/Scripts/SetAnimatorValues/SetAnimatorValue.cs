using UnityEngine;

namespace SetAnimatorValues
{
    public class SetAnimatorValue : MonoBehaviour
    {
        [SerializeField] protected Animator animator;
        [SerializeField] protected string parameterName;
        
        public virtual void SetValue()
        { 
            
        }
    }
}
