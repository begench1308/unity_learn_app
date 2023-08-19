import 'package:flutter/material.dart';

class HitCountExample extends StatelessWidget {
  const HitCountExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hit Count Example'),
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
                '\n'
                '/// <summary>\n'
                '/// This script shows the basic structure of all other scripts.\n'
                '/// </summary>\n'
                'public class HitCountExample : MonoBehaviour\n'
                '{\n'
                '    // Keep count of the clicks.\n'
                '    [SerializeField] private int hitCount; // 1\n'
                '\n'
                '    private void Start() // 2\n'
                '    {\n'
                '        // Read the persisted data and set the initial hit count.\n'
                '        hitCount = 0; // 3\n'
                '    }\n'
                '\n'
                '    private void OnMouseDown() // 4\n'
                '    {\n'
                '        // Increment the hit count on each click and save the data.\n'
                '        hitCount++; // 5\n'
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
