import 'package:equatable/equatable.dart';
import 'package:yum_quick/features/navigation_bar/domain/entities/navigation_item.dart';

class NavigationBarState extends Equatable {
  final int currentIndex;
  final List<NavigationItem> navigationItems;

  const NavigationBarState({
    this.currentIndex = 0,
    this.navigationItems = const [],
  });

  NavigationBarState copyWith({
    int? currentIndex,
    List<NavigationItem>? navigationItems,
  }) {
    return NavigationBarState(
      currentIndex: currentIndex ?? this.currentIndex,
      navigationItems: navigationItems ?? this.navigationItems,
    );
  }

  @override
  List<Object?> get props => [currentIndex, navigationItems];
}
