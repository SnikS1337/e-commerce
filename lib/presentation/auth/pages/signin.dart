import 'package:flutter/material.dart';
import 'package:untitled/common/widgets/button/basic_app_button.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signinText(context),
            const SizedBox(height: 20),
            _emailField(context),
            const SizedBox(height: 20),
            _continueButton(),
          ],
        ),
      ),
    );
  }
}

Widget _signinText(BuildContext context) {
  return const Text(
    'Sign in',
    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
  );
}

Widget _emailField(BuildContext context) {
  return TextField(decoration: InputDecoration(hintText: 'Enter email'));
}

Widget _continueButton() {
  return BasicAppButton(onPressed: () {}, title: 'Continue');
}
