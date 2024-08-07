import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_flutter/common/widgets/button/basic_app_button.dart';
import 'package:spotify_flutter/core/configs/assets/app_images.dart';
import 'package:spotify_flutter/core/configs/assets/app_vectors.dart';
import 'package:spotify_flutter/presentation/choose_mode/pages/choose_mode.dart';

class GetStatedPage extends StatelessWidget {
  const GetStatedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.introBG),
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.15),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(AppVectors.logo),
                ),
                const Spacer(),
                Text(
                  'Enjoy listening to music',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white.withOpacity(0.9),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                  'Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 30),
                BasicAppButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChooseModePage(),
                    ),
                  ),
                  title: 'Get started',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
