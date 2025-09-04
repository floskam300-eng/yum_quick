import '../entities/on_boarding_item.dart';

abstract class OnBoardingRepository {
  List<OnBoardingItem> getOnBoardingData();
}
