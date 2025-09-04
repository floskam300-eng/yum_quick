import 'package:yum_quick/features/navigation_bar/domain/entities/navigation_item.dart';

abstract class NavigationItemRepository {
  List<NavigationItem> getNavigationItems();
}