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

  static ColorScheme dark() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.coralLight,
      onPrimary: Color(0xFF3D1210),
      primaryContainer: Color(0xFF5C2A24),
      onPrimaryContainer: Color(0xFFFFDDD8),
      secondary: AppColors.mint,
      onSecondary: Color(0xFF0F2924),
      secondaryContainer: AppColors.mintDark,
      onSecondaryContainer: AppColors.mint,
      tertiary: AppColors.teal,
      onTertiary: Color(0xFF002117),
      tertiaryContainer: AppColors.tealDeep,
      onTertiaryContainer: Color(0xFF9FE8D4),
      error: Color(0xFFFF453A),
      onError: Color(0xFF690005),
      errorContainer: Color(0xFF93000A),
      onErrorContainer: Color(0xFFFFDAD6),
      surface: AppColors.navy,
      onSurface: Color(0xFFF5F5F7),
      onSurfaceVariant: Color(0xFFB8C4CE),
      outline: Color(0x59FFFFFF),
      outlineVariant: Color(0x33FFFFFF),
      shadow: Color(0x66000000),
      scrim: Color(0x99000000),
      inverseSurface: Color(0xFFF5F5F7),
      onInverseSurface: AppColors.navy,
      inversePrimary: AppColors.coralDark,
      surfaceTint: AppColors.coralLight,
    );
  }
}
