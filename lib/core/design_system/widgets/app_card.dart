import 'package:flutter/material.dart';
import 'package:training_log/core/design_system/tokens/app_dimens.dart';
import 'package:training_log/core/design_system/widgets/glass_surface.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    required this.child,
    this.onTap,
    this.padding = const EdgeInsets.all(AppDimens.size16),
    this.margin,
    super.key,
  });

  final Widget child;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return GlassSurface(
      padding: padding,
      margin: margin,
      onTap: onTap,
      style: GlassSurfaceStyle.card,
      child: child,
    );
  }
}
