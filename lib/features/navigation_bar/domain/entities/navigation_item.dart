import 'package:equatable/equatable.dart';

class NavigationItem extends Equatable {
  final String asset;

  const NavigationItem({required this.asset});

  @override
  List<Object?> get props => [asset];
}