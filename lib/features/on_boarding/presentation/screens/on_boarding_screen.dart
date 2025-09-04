import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:yum_quick/core/theme/app_colors.dart';
import 'package:yum_quick/features/on_boarding/presentation/provider/on_boarding_cubit.dart';
import 'package:yum_quick/features/on_boarding/presentation/provider/on_boarding_state.dart';
import 'package:yum_quick/injection_container.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => sl<OnBoardingCubit>(),
        child: BlocBuilder<OnBoardingCubit, OnBoardingState>(
          builder: (context, state) {
            return Animate(
              key: ValueKey(state.index),
              effects: [
                SlideEffect(
                  duration: 0.5.seconds,
                  begin: const Offset(-0.5, 0),
                  curve: Curves.easeInOut,
                ),
                FadeEffect(duration: 0.8.seconds),
              ],
              child: Stack(
                children: [
                  Image.asset(
                    state.onBoardingData[state.index].image,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ).animate().blur(
                    duration: 1.6.seconds,
                    begin: Offset(5, 5),
                    end: Offset(0, 0),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.backgroundColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                              SizedBox(height: 20),
                              SvgPicture.asset(
                                state.onBoardingData[state.index].icon,
                                height: 36.81,
                                width: 31,
                              ),
                              SizedBox(height: 10),
                              Text(
                                state.onBoardingData[state.index].title,
                                style: TextStyle(
                                  fontSize: 24,
                                  color: AppColors.secondaryColor,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(height: 10),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: Text(
                                  state.onBoardingData[state.index].description,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 30),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 25,
                                    height: 5,
                                    decoration: BoxDecoration(
                                      color:
                                          state.index == 0
                                              ? AppColors.secondaryColor
                                              : AppColors.primaryColor,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  SizedBox(width: 3),
                                  Container(
                                    width: 25,
                                    height: 5,
                                    decoration: BoxDecoration(
                                      color:
                                          state.index == 1
                                              ? AppColors.secondaryColor
                                              : AppColors.primaryColor,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  SizedBox(width: 3),
                                  Container(
                                    width: 25,
                                    height: 5,
                                    decoration: BoxDecoration(
                                      color:
                                          state.index == 2
                                              ? AppColors.secondaryColor
                                              : AppColors.primaryColor,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 30),
                              ElevatedButton(
                                onPressed:
                                    () => context
                                        .read<OnBoardingCubit>()
                                        .nextIndex(context),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.secondaryColor,
                                  foregroundColor: AppColors.backgroundColor,
                                ),
                                child: Text(
                                  "    ${state.onBoardingData[state.index].btnText}    ",
                                  style: TextStyle(fontSize: 17),
                                ),
                              ),
                            ]
                            .animate(interval: 50.ms)
                            .slide(
                              duration: 0.5.seconds,
                              begin: const Offset(-1, 0),
                              curve: Curves.easeInOut,
                            )
                            .fadeIn(duration: 0.8.seconds),
                      ),
                    ),
                  ),
                  Offstage(
                    offstage: state.index == state.onBoardingData.length - 1,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: EdgeInsets.only(top: 50, right: 20),
                        width: 60,
                        child: InkWell(
                          onTap: () => context.goNamed('welcome'),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Skip",
                                style: TextStyle(
                                  color: AppColors.secondaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.navigate_next_rounded,
                                color: AppColors.secondaryColor,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
