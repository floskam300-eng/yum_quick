import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:yum_quick/core/router/app_navigation.dart';
import 'package:yum_quick/features/on_boarding/domain/usecases/get_on_boarding_data_usecase.dart';
import 'package:yum_quick/features/on_boarding/presentation/provider/on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  final GetOnBoardingDataUseCase getOnBoardingDataUseCase;

  OnBoardingCubit(this.getOnBoardingDataUseCase)
    : super(
        OnBoardingInitial(
          index: 0,
          onBoardingData: getOnBoardingDataUseCase.call(),
        ),
      );

  void nextIndex(BuildContext context) {
    if (state.index > state.onBoardingData.length - 2) {
      context.goNamed(AppNavigation.welcome);
      return;
    }
    emit(
      OnBoardingNextIndex(
        index: state.index + 1,
        isPressed: true,
        onBoardingData: getOnBoardingDataUseCase.call(),
      ),
    );
  }
}
