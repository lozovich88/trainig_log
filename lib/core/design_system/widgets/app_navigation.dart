import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:training_log/core/design_system/theme/app_glass_theme.dart';
import 'package:training_log/core/design_system/tokens/app_dimens.dart';
import 'package:training_log/core/design_system/tokens/app_radius.dart';

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

    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppDimens.size16,
        0,
        AppDimens.size16,
        AppDimens.size8,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppRadius.xl),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: AppDimens.glassBlur,
            sigmaY: AppDimens.glassBlur,
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: glass.navBar,
              borderRadius: BorderRadius.circular(AppRadius.xl),
              border: Border.all(color: glass.border, width: 0.8),
            ),
            child: NavigationBar(
              selectedIndex: selectedIndex,
              onDestinationSelected: onDestinationSelected,
              destinations: destinations,
            ),
          ),
        ),
      ),
    );
  }
}

class AppBottomSheet extends StatelessWidget {
  const AppBottomSheet({
    required this.title,
    required this.child,
    this.actions,
    super.key,
  });

  final String title;
  final Widget child;
  final Widget? actions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: AppDimens.size16,
        right: AppDimens.size16,
        top: AppDimens.size16,
        bottom: MediaQuery.viewInsetsOf(context).bottom + AppDimens.size16,
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
  }) {
    return showModalBottomSheet<T>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        final glass = AppGlassTheme.of(context);
        return ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(AppRadius.xl)),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: AppDimens.glassBlur,
              sigmaY: AppDimens.glassBlur,
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: glass.surfaceElevated,
                border: Border(top: BorderSide(color: glass.border)),
              ),
              child: builder(context),
            ),
          ),
        );
      },
    );
  }
}
