import 'package:equatable/equatable.dart';
import '../../domain/entities/on_boarding_item.dart';

sealed class OnBoardingState extends Equatable {
  final int index;
  final bool isPressed;
  final List<OnBoardingItem> onBoardingData;

  const OnBoardingState({
    required this.index,
    this.isPressed = false,
    required this.onBoardingData,
  });
  @override
  List<Object?> get props => [index, onBoardingData, isPressed];
}

class OnBoardingInitial extends OnBoardingState {
  const OnBoardingInitial({
    required super.index,
    super.isPressed,
    required super.onBoardingData,
  });
}

class OnBoardingNextIndex extends OnBoardingState {
  const OnBoardingNextIndex({
    required super.index,
    super.isPressed,
    required super.onBoardingData,
  });
}
