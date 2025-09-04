import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:yum_quick/core/router/app_navigation.dart';
import 'package:yum_quick/core/theme/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: SvgPicture.asset("assets/splash_screen/icons/splash_logo.svg")
            .animate(
              onComplete: (_) => context.goNamed(AppNavigation.onboarding),
            )
            .fadeIn(duration: 1.5.seconds)
            .fadeOut(delay: 3.seconds, duration: 1.5.seconds),
      ),
    );
  }
}
