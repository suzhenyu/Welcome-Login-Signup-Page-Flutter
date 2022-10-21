import 'package:flutter/material.dart';
import 'package:flutter_auth/components/background.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Column(
          children: [
            const Text(
              "LOGIN",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: const [
                Icon(Icons.person),
                TextField(
                  autofillHints: ["Your email"],
                ),
              ],
            ),
            Row(
              children: const [
                Icon(Icons.person),
                TextField(
                  autofillHints: ["Your password"],
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle(
                foregroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                backgroundColor:
                    MaterialStatePropertyAll<Color>(Color(0xFF6F35A5)),
              ),
              child: const Text(
                "LOGIN",
              ),
            ),
            const Text("Don't have an Account?Sign Up"),
          ],
        ),
      ),
    );
  }
}
