import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:yum_quick/features/navigation_bar/domain/usecases/get_navigation_items.dart';
import 'package:yum_quick/features/navigation_bar/presentation/provider/navigation_bar_state.dart';

class NavigationBarCubit extends Cubit<NavigationBarState> {
  final GetNavigationItems getNavigationItemsUseCase;

  NavigationBarCubit({required this.getNavigationItemsUseCase})
    : super(
        NavigationBarState(
          currentIndex: 0,
          navigationItems: getNavigationItemsUseCase(),
        ),
      );

  void goBranch(int index, StatefulNavigationShell navigationShell) {
    if (state.currentIndex != index) {
      emit(state.copyWith(currentIndex: index));
    }
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
