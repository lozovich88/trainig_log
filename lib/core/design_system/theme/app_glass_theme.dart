import 'package:flutter/material.dart';
import 'package:training_log/core/design_system/tokens/app_colors.dart';

class AppGlassTheme extends ThemeExtension<AppGlassTheme> {
  const AppGlassTheme({
    required this.surface,
    required this.surfaceElevated,
    required this.border,
    required this.navBar,
    required this.gradientStart,
    required this.gradientCenter,
    required this.gradientEnd,
    required this.accentGlow,
    required this.cardSurface,
    required this.cardBorder,
    required this.cardOnSurface,
    required this.cardOnSurfaceVariant,
  });

  final Color surface;
  final Color surfaceElevated;
  final Color border;
  final Color navBar;
  final Color gradientStart;
  final Color gradientCenter;
  final Color gradientEnd;
  final Color accentGlow;
  final Color cardSurface;
  final Color cardBorder;
  final Color cardOnSurface;
  final Color cardOnSurfaceVariant;

  static AppGlassTheme of(BuildContext context) {
    return Theme.of(context).extension<AppGlassTheme>()!;
  }

  @override
  AppGlassTheme copyWith({
    Color? surface,
    Color? surfaceElevated,
    Color? border,
    Color? navBar,
    Color? gradientStart,
    Color? gradientCenter,
    Color? gradientEnd,
    Color? accentGlow,
    Color? cardSurface,
    Color? cardBorder,
    Color? cardOnSurface,
    Color? cardOnSurfaceVariant,
  }) {
    return AppGlassTheme(
      surface: surface ?? this.surface,
      surfaceElevated: surfaceElevated ?? this.surfaceElevated,
      border: border ?? this.border,
      navBar: navBar ?? this.navBar,
      gradientStart: gradientStart ?? this.gradientStart,
      gradientCenter: gradientCenter ?? this.gradientCenter,
      gradientEnd: gradientEnd ?? this.gradientEnd,
      accentGlow: accentGlow ?? this.accentGlow,
      cardSurface: cardSurface ?? this.cardSurface,
      cardBorder: cardBorder ?? this.cardBorder,
      cardOnSurface: cardOnSurface ?? this.cardOnSurface,
      cardOnSurfaceVariant: cardOnSurfaceVariant ?? this.cardOnSurfaceVariant,
    );
  }

  @override
  AppGlassTheme lerp(AppGlassTheme? other, double t) {
    if (other == null) {
      return this;
    }
    return AppGlassTheme(
      surface: Color.lerp(surface, other.surface, t)!,
      surfaceElevated: Color.lerp(surfaceElevated, other.surfaceElevated, t)!,
      border: Color.lerp(border, other.border, t)!,
      navBar: Color.lerp(navBar, other.navBar, t)!,
      gradientStart: Color.lerp(gradientStart, other.gradientStart, t)!,
      gradientCenter: Color.lerp(gradientCenter, other.gradientCenter, t)!,
      gradientEnd: Color.lerp(gradientEnd, other.gradientEnd, t)!,
      accentGlow: Color.lerp(accentGlow, other.accentGlow, t)!,
      cardSurface: Color.lerp(cardSurface, other.cardSurface, t)!,
      cardBorder: Color.lerp(cardBorder, other.cardBorder, t)!,
      cardOnSurface: Color.lerp(cardOnSurface, other.cardOnSurface, t)!,
      cardOnSurfaceVariant: Color.lerp(cardOnSurfaceVariant, other.cardOnSurfaceVariant, t)!,
    );
  }

  static AppGlassTheme light(ColorScheme scheme) {
    return AppGlassTheme(
      surface: AppColors.macSecondaryBackground.withValues(alpha: 0.62),
      surfaceElevated: AppColors.macSecondaryBackground.withValues(alpha: 0.78),
      border: Colors.white.withValues(alpha: 0.72),
      navBar: AppColors.macSecondaryBackground.withValues(alpha: 0.68),
      gradientStart: AppColors.lightGradientTop,
      gradientCenter: AppColors.lightGradientMid,
      gradientEnd: AppColors.lightGradientBottom,
      accentGlow: scheme.primary.withValues(alpha: 0.1),
      cardSurface: AppColors.mintSoft.withValues(alpha: 0.88),
      cardBorder: AppColors.teal.withValues(alpha: 0.18),
      cardOnSurface: AppColors.mintCardText,
      cardOnSurfaceVariant: AppColors.mintCardTextVariant,
    );
  }

  static AppGlassTheme dark(ColorScheme scheme) => light(scheme);
}
