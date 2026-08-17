import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:training_log/core/design_system/theme/app_glass_theme.dart';
import 'package:training_log/core/design_system/tokens/app_dimens.dart';
import 'package:training_log/core/design_system/tokens/app_radius.dart';
import 'package:training_log/core/design_system/utils/app_platform.dart';

enum GlassSurfaceStyle {
  glass,
  card,
}

class GlassSurface extends StatelessWidget {
  const GlassSurface({
    required this.child,
    this.padding,
    this.margin,
    this.borderRadius = AppRadius.lg,
    this.onTap,
    this.elevated = false,
    this.style = GlassSurfaceStyle.glass,
    super.key,
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double borderRadius;
  final VoidCallback? onTap;
  final bool elevated;
  final GlassSurfaceStyle style;

  @override
  Widget build(BuildContext context) {
    final glass = AppGlassTheme.of(context);
    final isCard = style == GlassSurfaceStyle.card;
    final background = isCard
        ? glass.cardSurface
        : (elevated ? glass.surfaceElevated : glass.surface);
    final borderColor = isCard ? glass.cardBorder : glass.border;

    final decoratedChild = DecoratedBox(
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(color: borderColor, width: 0.8),
        boxShadow: [
          BoxShadow(
            color: isCard
                ? glass.accentGlow.withValues(alpha: 0.35)
                : glass.accentGlow,
            blurRadius: isCard ? 16 : 20,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Padding(
        padding: padding ?? EdgeInsets.zero,
        child: child,
      ),
    );

    final content = ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: AppPlatform.supportsBackdropBlur && !isCard
          ? BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: AppDimens.glassBlur,
                sigmaY: AppDimens.glassBlur,
              ),
              child: decoratedChild,
            )
          : decoratedChild,
    );

    final themedChild = isCard
        ? Theme(
            data: Theme.of(context).copyWith(
              colorScheme: Theme.of(context).colorScheme.copyWith(
                    onSurface: glass.cardOnSurface,
                    onSurfaceVariant: glass.cardOnSurfaceVariant,
                  ),
              textTheme: Theme.of(context).textTheme.apply(
                    bodyColor: glass.cardOnSurface,
                    displayColor: glass.cardOnSurface,
                  ),
              listTileTheme: ListTileThemeData(
                textColor: glass.cardOnSurface,
                iconColor: glass.cardOnSurfaceVariant,
              ),
              iconTheme: IconThemeData(color: glass.cardOnSurfaceVariant),
            ),
            child: content,
          )
        : content;

    final wrapped = margin == null
        ? themedChild
        : Padding(
            padding: margin!,
            child: themedChild,
          );

    if (onTap == null) {
      return wrapped;
    }

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(borderRadius),
        child: wrapped,
      ),
    );
  }
}
