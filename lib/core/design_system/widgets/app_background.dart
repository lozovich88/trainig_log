import 'package:flutter/material.dart';
import 'package:training_log/core/design_system/theme/app_glass_theme.dart';

class AppBackground extends StatelessWidget {
  const AppBackground({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final glass = theme.extension<AppGlassTheme>() ??
        (theme.brightness == Brightness.dark
            ? AppGlassTheme.dark(theme.colorScheme)
            : AppGlassTheme.light(theme.colorScheme));

    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0.0, 0.45, 1.0],
          colors: [
            glass.gradientStart,
            glass.gradientCenter,
            glass.gradientEnd,
          ],
        ),
      ),
      child: child,
    );
  }
}
