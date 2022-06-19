using UnityEngine;

namespace SetAnimatorValues
{
    public class SetAnimatorInt : SetAnimatorValue
    {
        [SerializeField] private int parameterValue;

        public override void SetValue()
        {
            animator.SetInteger(parameterName, parameterValue);
        }

        public void ChangeSignValue(int givenParameterValue)
        {
            parameterValue = givenParameterValue;
        }
    }
}