using UnityEngine.SceneManagement;

public static class LoadScene
{
    public static void LoadSceneByName(string sceneName)
    {
        SceneManager.LoadScene(sceneName);
    }
}
