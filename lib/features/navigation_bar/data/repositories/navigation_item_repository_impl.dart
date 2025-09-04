import 'package:yum_quick/features/navigation_bar/domain/entities/navigation_item.dart';
import 'package:yum_quick/features/navigation_bar/domain/repositories/navigation_item_repository.dart';

class NavigationItemRepositoryImpl extends NavigationItemRepository {
  @override
  List<NavigationItem> getNavigationItems() {
    return <NavigationItem>[
      NavigationItem(asset: '/assets/navigation_bar/icons/home_logo.svg'),
      NavigationItem(asset: '/assets/navigation_bar/icons/order_logo.svg'),
      NavigationItem(asset: '/assets/navigation_bar/icons/favorite_logo.svg'),
      NavigationItem(asset: '/assets/navigation_bar/icons/document_logo.svg'),
      NavigationItem(asset: '/assets/navigation_bar/icons/contact_us_logo.svg'),
    ];
  }
}
