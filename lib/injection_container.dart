import 'package:get_it/get_it.dart';
import 'package:yum_quick/features/navigation_bar/data/repositories/navigation_item_repository_impl.dart';
import 'package:yum_quick/features/navigation_bar/domain/repositories/navigation_item_repository.dart';
import 'package:yum_quick/features/navigation_bar/domain/usecases/get_navigation_items.dart';
import 'package:yum_quick/features/navigation_bar/presentation/provider/navigation_bar_cubit.dart';
import 'package:yum_quick/features/on_boarding/data/repositories/on_boarding_repository_impl.dart';
import 'package:yum_quick/features/on_boarding/domain/repositories/on_boarding_repository.dart';
import 'package:yum_quick/features/on_boarding/domain/usecases/get_on_boarding_data_usecase.dart';
import 'package:yum_quick/features/on_boarding/presentation/provider/on_boarding_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Features - OnBoarding
  sl.registerFactory(() => OnBoardingCubit(sl()));

  // Use cases
  sl.registerLazySingleton(() => GetOnBoardingDataUseCase(sl()));

  // Repository
  sl.registerLazySingleton<OnBoardingRepository>(
    () => OnBoardingRepositoryImpl(),
  );

  // Features - NavigationBar
  sl.registerFactory(() => NavigationBarCubit(getNavigationItemsUseCase: sl()));

  // Use cases
  sl.registerLazySingleton(
    () => GetNavigationItems(navigationItemRepository: sl()),
  );

  // Repository
  sl.registerLazySingleton<NavigationItemRepository>(
    () => NavigationItemRepositoryImpl(),
  );
}
