import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_flutter/common/widgets/appbar/basic_appbar.dart';
import 'package:spotify_flutter/core/configs/assets/app_vectors.dart';
import 'package:spotify_flutter/presentation/auth/pages/signup.dart';

import '../../../common/widgets/button/basic_app_button.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(
        centerTitle: true,
        title: SvgPicture.asset(AppVectors.logo, height: 40, width: 40),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _registerText(),
            const SizedBox(height: 50),
            _emailField(context),
            const SizedBox(height: 20),
            _passwordField(context),
            const SizedBox(height: 20),
            BasicAppButton(onPressed: () {}, title: 'Sign In'),
          ],
        ),
      ),
      bottomNavigationBar: _signupText(context),
    );
  }

  Widget _registerText() {
    return const Text(
      'Register',
      textAlign: TextAlign.center,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(hintText: 'Enter email').applyDefaults(
        Theme.of(context).inputDecorationTheme,
      ),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(hintText: 'Password').applyDefaults(
        Theme.of(context).inputDecorationTheme,
      ),
    );
  }

  Widget _signupText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Not A Member ?',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
          ),
          TextButton(
              onPressed: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const SignupPage())),
              child: const Text('Register Now')),
        ],
      ),
    );
  }
}
