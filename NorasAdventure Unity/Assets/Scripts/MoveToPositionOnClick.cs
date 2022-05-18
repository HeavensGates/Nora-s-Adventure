using UnityEngine;

public class MoveToPositionOnClick : MonoBehaviour
{
    [SerializeField] private RectTransform positionToMoveTo;
    [SerializeField] private RectTransform transformToMove;
    
    public void MoveToPosition()
    {
        transformToMove.position = positionToMoveTo.position;
    }
}
