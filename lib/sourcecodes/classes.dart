import 'package:flutter/material.dart';

class ClassesExample extends StatelessWidget {
  const ClassesExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Classes'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(250, 7, 7, 7),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text(
                'using UnityEngine;\n'
                'using System.Collections;\n'
                '\n'
                '[System.Serializable]\n'
                'public class DataClass {\n'
                '    public int myInt;\n'
                '    public float myFloat;\n'
                '}\n'
                '\n'
                'ublic class DemoScript : MonoBehavior {\n'
                '    public Light myLight;\n'
                '    public MyClass myClass;\n'
                '\n'
                '    void Awake () {\n'
                '        int myVar = AddTwo(9,2);\n'
                '        Debug.Log(myVar);\n'
                '    }\n'
                '    void Update () {\n'
                '        if (Input.GetKeyDown ("spave")) {\n'
                '            MyFunction ();\n'
                '        }\n'
                '   }\n'
                '   void MyFunction () {\n'
                '        myLight.enabled = !myLight.enabled;\n'
                '    }\n'
                '}',
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
