import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:training_log/core/design_system/theme/app_glass_theme.dart';
import 'package:training_log/core/design_system/tokens/app_dimens.dart';
import 'package:training_log/core/design_system/tokens/app_radius.dart';
import 'package:training_log/core/design_system/utils/app_platform.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({
    required this.selectedIndex,
    required this.onDestinationSelected,
    required this.destinations,
    super.key,
  });

  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;
  final List<NavigationDestination> destinations;

  @override
  Widget build(BuildContext context) {
    final glass = AppGlassTheme.of(context);
    final navBar = DecoratedBox(
      decoration: BoxDecoration(
        color: AppPlatform.supportsBackdropBlur
            ? glass.navBar
            : glass.navBar.withValues(alpha: 0.96),
        borderRadius: BorderRadius.circular(AppRadius.xl),
        border: Border.all(color: glass.border, width: 0.8),
      ),
      child: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: onDestinationSelected,
        destinations: destinations,
      ),
    );

    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppDimens.size16,
        0,
        AppDimens.size16,
        AppDimens.size8,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppRadius.xl),
        child: AppPlatform.supportsBackdropBlur
            ? BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: AppDimens.glassBlur,
                  sigmaY: AppDimens.glassBlur,
                ),
                child: navBar,
              )
            : navBar,
      ),
    );
  }
}

class AppBottomSheet extends StatelessWidget {
  const AppBottomSheet({
    required this.title,
    required this.child,
    this.actions,
    this.reserveBottomNavSpace = false,
    super.key,
  });

  final String title;
  final Widget child;
  final Widget? actions;
  final bool reserveBottomNavSpace;

  @override
  Widget build(BuildContext context) {
    final bottomPadding = MediaQuery.viewInsetsOf(context).bottom +
        MediaQuery.paddingOf(context).bottom +
        AppDimens.size16 +
        (reserveBottomNavSpace ? AppDimens.bottomNavReservedHeight : 0);

    return Padding(
      padding: EdgeInsets.only(
        left: AppDimens.size16,
        right: AppDimens.size16,
        top: AppDimens.size16,
        bottom: bottomPadding,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Container(
              width: 36,
              height: 5,
              margin: const EdgeInsets.only(bottom: AppDimens.size16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onSurfaceVariant.withValues(alpha: 0.35),
                borderRadius: BorderRadius.circular(AppRadius.pill),
              ),
            ),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: AppDimens.size16),
          child,
          if (actions != null) ...[
            const SizedBox(height: AppDimens.size8),
            actions!,
          ],
        ],
      ),
    );
  }

  static Future<T?> show<T>(
    BuildContext context, {
    required WidgetBuilder builder,
    bool reserveBottomNavSpace = false,
  }) {
    return showModalBottomSheet<T>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      useRootNavigator: true,
      builder: (context) {
        final glass = AppGlassTheme.of(context);
        final sheet = DecoratedBox(
          decoration: BoxDecoration(
            color: AppPlatform.supportsBackdropBlur
                ? glass.surfaceElevated
                : glass.surfaceElevated.withValues(alpha: 0.98),
            border: Border(top: BorderSide(color: glass.border)),
          ),
          child: builder(context),
        );
        return ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(AppRadius.xl)),
          child: AppPlatform.supportsBackdropBlur
              ? BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: AppDimens.glassBlur,
                    sigmaY: AppDimens.glassBlur,
                  ),
                  child: sheet,
                )
              : sheet,
        );
      },
    );
  }
}
