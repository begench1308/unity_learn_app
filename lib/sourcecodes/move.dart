import 'package:flutter/material.dart';

class MovementExample extends StatelessWidget {
  const MovementExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Player Movement Controller'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(250, 7, 7, 7),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text(
                "using System.Collections;\n"
                'using System.Collections.Generic;\n'
                'using UnityEngine;\n'
                '\n'
                'public class Example : MonoBehaviour\n'
                '{\n'
                '    private CharacterController controller;\n'
                '    private Vector3 playerVelocity;\n'
                '    private bool groundedPlayer;\n'
                '    private float playerSpeed = 2.0f;\n'
                '   private float jumpHeight = 1.0f;\n'
                '   private float gravityValue = -9.81f;\n'
                '\n'
                '    private void Start()\n'
                '    {\n'
                '        controller = gameObject.AddComponent<CharacterController>();\n'
                '    }\n'
                '\n'
                '    void Update()\n'
                '    {\n'
                '        groundedPlayer = controller.isGrounded;\n'
                '        if (groundedPlayer && playerVelocity.y < 0)\n'
                '        {\n'
                '            playerVelocity.y = 0f;\n'
                '        }\n'
                '\n'
                '        Vector3 move = new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical"));\n'
                '        controller.Move(move * Time.deltaTime * playerSpeed);\n'
                '\n'
                '       if (move != Vector3.zero)\n'
                '        {\n'
                '            gameObject.transform.forward = move;\n'
                '        }\n'
                '\n'
                '        // Changes the height position of the player..\n'
                '        if (Input.GetButtonDown("Jump") && groundedPlayer)\n'
                '        {\n'
                '            playerVelocity.y += Mathf.Sqrt(jumpHeight * -3.0f * gravityValue);\n'
                '        }\n'
                '\n'
                '        playerVelocity.y += gravityValue * Time.deltaTime;\n'
                '        controller.Move(playerVelocity * Time.deltaTime);\n'
                '    }\n'
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
