import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/components/login_form.dart';
import 'package:flutter_auth/Screens/Login/components/login_screen_top_image.dart';
import 'package:flutter_auth/components/background.dart';
import 'package:flutter_auth/responsive.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Background(
      child: SingleChildScrollView(
        child: Responsive(
          mobile: MobileLoginScreen(),
          desktop: DesktopLoginScreen(),
        ),
      ),
    );
  }
}

class MobileLoginScreen extends StatelessWidget {
  const MobileLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const LoginScreenTopImage(),
        Row(
          children: const [
            Spacer(),
            Expanded(
              flex: 8,
              child: LoginForm(),
            ),
            Spacer(),
          ],
        )
      ],
    );
  }
}

class DesktopLoginScreen extends StatelessWidget {
  const DesktopLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "LOGIN",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SvgPicture.asset("assets/icons/login.svg"),
        TextFormField(
          decoration: const InputDecoration(
            icon: Icon(Icons.person),
            hintText: "Your email",
          ),
          onSaved: (newValue) {},
        ),
        TextFormField(
          decoration: const InputDecoration(
            icon: Icon(Icons.person),
            hintText: "Your password",
          ),
          onSaved: (newValue) {},
        ),
        ElevatedButton(
          onPressed: () {},
          style: const ButtonStyle(
            foregroundColor: MaterialStatePropertyAll<Color>(Colors.white),
            backgroundColor: MaterialStatePropertyAll<Color>(Color(0xFF6F35A5)),
          ),
          child: const Text("LOGIN"),
        ),
        const Text("Don't have an Account? Sign Up"),
      ],
    );
  }
}
