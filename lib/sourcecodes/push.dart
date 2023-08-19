import 'package:flutter/material.dart';

class PushExample extends StatelessWidget {
  const PushExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simpel Push Example'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(250, 7, 7, 7),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text(
                "using UnityEngine;\n"
                'sing System.Collections;\n'
                'using System.Collections.Generic;\n'
                'using System.Security.Cryptography;\n'
                'using System.Globalization;\n'
                'using System.Text;\n'
                'using System;\n'
                'using LitJson_Gamedonia;\n'
                'using Gamedonia.Backend;\n'
                '\n'
                '\n'
                'public class Push : MonoBehaviour {\n'
                '\n'
                '	public Texture2D backgroundImg;\n'
                '	public GUISkin skin;\n'
                '\n'
                '\n'
                '	private string errorMsg = "";\n'
                '	private string statusMsg = "";\n'
                '	private string console = "";\n'
                '\n'
                '	void Awake() {\n'
                '\n'
                '	}\n'
                '\n'
                '	void Start() {\n'
                '\n'
                '\n'
                '		if (  GamedoniaBackend.INSTANCE== null) {\n'
                '\n'
                '			statusMsg = "Missing Api Key/Secret. Check the README.txt for more info.";\n'
                '			return;\n'
                '		}\n'
                '		else if (GamedoniaPushNotifications.Instance.androidSenderId == "") {\n'
                '			Debug.Log ("Missing Android Sender Id, push notifications won t work for Android. Check the README.txt for more info.");\n'
                '		}\n'
                '\n'
                '		GamedoniaUsers.Authenticate(OnLogin);\n'
                '		printToConsole ("Starting session with Gamedonia...");\n'
                '\n'
                '		//Handle push\n'
                '		GDPushService pushService = new GDPushService();\n'
                '		pushService.RegisterEvent += new RegisterEventHandler(OnNotification);\n'
                '		GamedoniaPushNotifications.AddService(pushService);\n'
                '\n'
                '	}\n'
                '\n'
                '	void OnGUI () {\n'
                '\n'
                '		GUI.skin = skin;\n'
                '\n'
                '		GUI.DrawTexture(UtilResize.ResizeGUI(new Rect(0,0,320,480)),backgroundImg);\n'
                '\n'
                '		GUI.enabled = (statusMsg == "");\n'
                '\n'
                '		//Text area control\n'
                '		GUI.Label(UtilResize.ResizeGUI(new Rect(80,10,220,20)),"Console Log:","LabelBold");\n'
                '		GUI.Box (UtilResize.ResizeGUI (new Rect (80, 30, 220, 380)), console);\n'
                '\n'
                '		//Server Push\n'
                '		if (GUI.Button (UtilResize.ResizeGUI(new Rect (80,420, 220, 50)), "Generate Push With Server Code")) {\n'
                '			generatePushWithServerCode();\n'
                '		}\n'
                '\n'
                '		if (errorMsg != "") {\n'
                '			GUI.Box (new Rect ((Screen.width - (UtilResize.resMultiplier() * 260)),(Screen.height - (UtilResize.resMultiplier() * 50)),(UtilResize.resMultiplier() * 260),(UtilResize.resMultiplier() * 50)), errorMsg);\n'
                '			if(GUI.Button(new Rect (Screen.width - 20,Screen.height - UtilResize.resMultiplier() * 45,16,16), "x","ButtonSmall")) {\n'
                '				errorMsg = "";\n'
                '			}\n'
                '		}\n'
                '\n'
                '		GUI.enabled = true;\n'
                '		if (statusMsg != "") {\n'
                '			GUI.Box (UtilResize.ResizeGUI(new Rect (80, 240 - 40, 220, 40)), statusMsg);\n'
                '		}\n'
                '	}\n'
                '\n'
                '\n'
                '	void generatePushWithServerCode() {\n'
                '		printToConsole("Requesting server to send push...");\n'
                '		GamedoniaScripts.Run("sendpush",new Dictionary<string,object>(),\n'
                '		    delegate (bool success, object data) {\n'
                '				if (success) {\n'
                '					printToConsole("Push requested successfully");\n'
                '					checkEditor ();\n'
                '				}else {\n'
                '					printToConsole("Failed request for server push");\n'
                '				}\n'
                '			}\n'
                '		);\n'
                '	}\n'
                '\n'
                '	private void checkEditor() {\n'
                '\n'
                '		if (Application.isEditor) {\n'
                '			statusMsg = "Push notifications can only be received in a device. Not in Editor mode.";\n'
                '		}\n'
                '	}\n'
                '\n'
                '	private void printToConsole(string msg) {\n'
                '		console += msg + "\n";\n'
                '	}\n'
                '\n'
                '	void OnLogin (bool success) {\n'
                '\n'
                '		statusMsg = "";\n'
                '		if (success) {\n'
                '			printToConsole("Session started successfully. uid: " + GamedoniaUsers.me._id);\n'
                '		}else {\n'
                '			errorMsg = GamedoniaBackend.getLastError().ToString();\n'
                '			Debug.Log(errorMsg);\n'
                '		}\n'
                '\n'
                '	}\n'
                '\n'
                '	void OnNotification(IDictionary notification) {\n'
                '		printToConsole("Notification Received: " + JsonMapper.ToJson(notification));\n'
                '	}\n'
                '\n'
                "}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
