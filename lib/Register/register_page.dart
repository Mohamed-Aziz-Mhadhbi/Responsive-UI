import 'package:flutter/material.dart';
import 'already_memeber_signIn.dart';
import 'signup_benefits.dart';
import 'singup_form.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Row(
          children: [
            Expanded(child: SignupBenefits()),
            Expanded(
              child: Column(
                children: [
                  Row(children: [Spacer(), AlreadyMemeberSignIn(),]),
                  Expanded(child: SignInScreen())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
