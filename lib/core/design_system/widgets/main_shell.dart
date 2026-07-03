import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:training_log/core/design_system/widgets/app_background.dart';
import 'package:training_log/core/design_system/widgets/app_navigation.dart';
import 'package:training_log/core/extensions/l10n_extension.dart';
import 'package:training_log/core/router/app_routes.dart';

class MainShell extends StatelessWidget {
  const MainShell({
    required this.location,
    required this.child,
    super.key,
  });

  final String location;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBody: true,
        body: child,
        bottomNavigationBar: AppNavigationBar(
          selectedIndex: _locationToIndex(location),
          onDestinationSelected: (index) {
            switch (index) {
              case 0:
                context.go(AppRoutes.home);
              case 1:
                context.go(AppRoutes.workouts);
              case 2:
                context.go(AppRoutes.statistics);
            }
          },
          destinations: [
            NavigationDestination(
              icon: const Icon(Icons.home_outlined),
              selectedIcon: const Icon(Icons.home_rounded),
              label: context.l10n.navHome,
            ),
            NavigationDestination(
              icon: const Icon(Icons.fitness_center_outlined),
              selectedIcon: const Icon(Icons.fitness_center_rounded),
              label: context.l10n.navWorkouts,
            ),
            NavigationDestination(
              icon: const Icon(Icons.bar_chart_outlined),
              selectedIcon: const Icon(Icons.bar_chart_rounded),
              label: context.l10n.navStatistics,
            ),
          ],
        ),
      ),
    );
  }

  int _locationToIndex(String location) {
    if (location.startsWith(AppRoutes.workouts)) {
      return 1;
    }
    if (location.startsWith(AppRoutes.statistics)) {
      return 2;
    }
    return 0;
  }
}
