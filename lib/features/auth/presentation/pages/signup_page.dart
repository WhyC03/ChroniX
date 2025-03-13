import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign Up.',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            AuthField(hintText: 'Name'),
            SizedBox(height: 15),
            AuthField(hintText: 'Email'),
            SizedBox(height: 15),
            AuthField(hintText: 'Password'),
            SizedBox(height: 20),
            AuthGradientButton(),
            SizedBox(height: 20),
            RichText(
              text: TextSpan(
                text: 'Already Have an Account?  ',
                style: Theme.of(context).textTheme.titleMedium,
                children: [
                  TextSpan(
                    text: 'Sign In',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: AppPallete.gradient2,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
