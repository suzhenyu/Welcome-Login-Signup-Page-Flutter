import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/constants.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          cursorColor: kPrimaryColor,
          onSaved: (newValue) {},
          decoration: const InputDecoration(
            hintText: "Your email",
            prefixIcon: Padding(
              padding: EdgeInsets.all(defaultPadding),
              child: Icon(Icons.person),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: TextFormField(
            textInputAction: TextInputAction.done,
            obscureText: true,
            onSaved: (newValue) {},
            decoration: const InputDecoration(
              hintText: "Your password",
              prefixIcon: Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: Icon(Icons.lock),
              ),
            ),
          ),
        ),
        const SizedBox(height: defaultPadding),
        ElevatedButton(
          onPressed: () {},
          child: const Text("LOGIN"),
        ),
        const SizedBox(height: defaultPadding),
        const AlreadyHaveAnAccountCheck(press: null),
      ],
    );
  }
}
