import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yum_quick/core/theme/app_colors.dart';
import 'package:yum_quick/core/widgets/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: Stack(
        children: [
          Center(
            child: SvgPicture.asset(
              "assets/launch_welcome/icons/welcome_screen_logo.svg",
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: Text(
                      "Lorem to from the 1980s with the release of the first desktop publishing software",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                  SizedBox(height: 30),
                  CustomButton(
                    color: AppColors.primaryColor,
                    textColor: AppColors.secondaryColor,
                    text: "Log In",
                    onPressed: () {},
                  ),
                  SizedBox(height: 3),
                  CustomButton(
                    color: AppColors.buttonColor,
                    textColor: AppColors.secondaryColor,
                    text: "Sign Up",
                    onPressed: () {}
                  ),
                ],
              ),
            ),
          ),
        ].animate().fadeIn(duration: 1.5.seconds),
      ),
    );
  }
}
