import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:yum_quick/features/navigation_bar/presentation/provider/navigation_bar_cubit.dart';
import 'package:yum_quick/features/navigation_bar/presentation/provider/navigation_bar_state.dart';
import 'package:yum_quick/injection_container.dart' as di;

class NavigationBarScreen extends StatelessWidget {
  const NavigationBarScreen({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.sl<NavigationBarCubit>(),
      child: BlocBuilder<NavigationBarCubit, NavigationBarState>(
        builder: (context, state) => Scaffold(
          body: navigationShell,
          bottomNavigationBar: CurvedNavigationBar(
            index: state.currentIndex,
            onTap: (value) {
              context.read<NavigationBarCubit>().goBranch(
                    value,
                    navigationShell,
                  );
            },
            items: <Widget>[
              ...state.navigationItems.map(
                (e) => SvgPicture.asset(e.asset),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
