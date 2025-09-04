import 'package:equatable/equatable.dart';

class OnBoardingItem extends Equatable {
  final String image;
  final String title;
  final String description;
  final String icon;
  final String btnText;

  const OnBoardingItem({
    required this.image,
    required this.title,
    required this.description,
    required this.icon,
    required this.btnText,
  });

  @override
  List<Object?> get props => [image, title, description, icon, btnText];
}
