import 'package:yum_quick/features/navigation_bar/domain/entities/navigation_item.dart';
import 'package:yum_quick/features/navigation_bar/domain/repositories/navigation_item_repository.dart';

class GetNavigationItems {
  final NavigationItemRepository navigationItemRepository;
  GetNavigationItems({required this.navigationItemRepository});
  List<NavigationItem> call() => navigationItemRepository.getNavigationItems();
}