import 'package:flutter/material.dart';
import 'package:training_log/core/design_system/tokens/app_colors.dart';

abstract final class AppColorScheme {
  static ColorScheme light() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.coral,
      onPrimary: Colors.white,
      primaryContainer: Color(0xFFFFE8E5),
      onPrimaryContainer: Color(0xFF7A2E27),
      secondary: AppColors.teal,
      onSecondary: Colors.white,
      secondaryContainer: Color(0xFFD4F0E8),
      onSecondaryContainer: Color(0xFF0F4D3F),
      tertiary: AppColors.navyMid,
      onTertiary: Colors.white,
      tertiaryContainer: Color(0xFFDCE4EE),
      onTertiaryContainer: Color(0xFF1A3344),
      error: Color(0xFFFF3B30),
      onError: Colors.white,
      errorContainer: Color(0xFFFFE5E3),
      onErrorContainer: Color(0xFF8C1D18),
      surface: AppColors.macBackground,
      onSurface: AppColors.macLabel,
      onSurfaceVariant: AppColors.macSecondaryLabel,
      outline: AppColors.macSeparator,
      outlineVariant: Color(0xFFD1D1D6),
      shadow: Color(0x1A000000),
      scrim: Color(0x66000000),
      inverseSurface: AppColors.macLabel,
      onInverseSurface: AppColors.macBackground,
      inversePrimary: AppColors.coralLight,
      surfaceTint: AppColors.coral,
    );
  }

  static ColorScheme dark() => light();
}
