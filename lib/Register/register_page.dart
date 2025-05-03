import 'package:flutter/material.dart';
import 'package:responsive_ui/Responsive/responsive.dart';
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
            if (!Responsive.isMobile(context))
              Expanded(
                flex: Responsive.isTablet(context) ? 2 : 1,
                child: SignupBenefits(),
              ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Spacer(), AlreadyMemeberSignIn()],
                  ),
                  Expanded(child: SignInScreen()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
