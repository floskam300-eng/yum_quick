import '../../domain/entities/on_boarding_item.dart';
import '../../domain/repositories/on_boarding_repository.dart';

class OnBoardingRepositoryImpl implements OnBoardingRepository {
  @override
  List<OnBoardingItem> getOnBoardingData() {
    return const <OnBoardingItem>[
      OnBoardingItem(
        image: "assets/on_boarding/images/food1.png",
        title: "Order For Food",
        description:
            "Order food from your favorite restaurants and get it delivered to your doorstep.",
        icon: "assets/on_boarding/icons/order_for_food.svg",
        btnText: "Next",
      ),
      OnBoardingItem(
        image: "assets/on_boarding/images/food2.png",
        title: "Easy Payment",
        description:
            "Order food from your favorite restaurants and get it delivered to your doorstep.",
        icon: "assets/on_boarding/icons/easy_payment.svg",
        btnText: "Next",
      ),
      OnBoardingItem(
        image: "assets/on_boarding/images/food3.png",
        title: "Fast Delivery",
        description:
            "Order food from your favorite restaurants and get it delivered to your doorstep.",
        icon: "assets/on_boarding/icons/fast_delivery.svg",
        btnText: "Get Started",
      ),
    ];
  }
}
