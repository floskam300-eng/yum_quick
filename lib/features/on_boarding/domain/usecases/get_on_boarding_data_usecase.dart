import '../entities/on_boarding_item.dart';
import '../repositories/on_boarding_repository.dart';

class GetOnBoardingDataUseCase {
  final OnBoardingRepository repository;

  GetOnBoardingDataUseCase(this.repository);

  List<OnBoardingItem> call() {
    return repository.getOnBoardingData();
  }
}
