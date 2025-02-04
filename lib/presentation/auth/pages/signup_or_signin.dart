import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_flutter/common/helpers/is_dark_mode.dart';
import 'package:spotify_flutter/common/widgets/appbar/basic_appbar.dart';
import 'package:spotify_flutter/common/widgets/button/basic_app_button.dart';
import 'package:spotify_flutter/core/configs/assets/app_images.dart';
import 'package:spotify_flutter/core/configs/assets/app_vectors.dart';
import 'package:spotify_flutter/presentation/auth/pages/signin.dart';
import 'package:spotify_flutter/presentation/auth/pages/signup.dart';

class SignupOrSigninPage extends StatelessWidget {
  const SignupOrSigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const BasicAppbar(),
        Align(
          alignment: Alignment.topRight,
          child: SvgPicture.asset(AppVectors.topPattern),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: SvgPicture.asset(AppVectors.bottomPattern),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Image.asset(AppImages.authBG),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(AppVectors.logo),
                const SizedBox(height: 60),
                const Text(
                  'Enjoy listening to music',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Spotify is a proprietary Swedish audio streaming and media services provider',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: BasicAppButton(
                        title: 'Register',
                        height: 70,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignupPage(),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: TextButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SigninPage(),
                          ),
                        ),
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: context.isDarkMode
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
