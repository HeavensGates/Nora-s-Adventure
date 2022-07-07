using UnityEngine;

public class DestroyPotion : MonoBehaviour
{
    [SerializeField]private AudioSource audioSource;
    
    public void TrashItemSound()
    {
        audioSource.Play();
    }
}
