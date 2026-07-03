import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training_log/core/design_system/theme/app_glass_theme.dart';
import 'package:training_log/core/design_system/tokens/app_color_scheme.dart';
import 'package:training_log/core/design_system/tokens/app_dimens.dart';
import 'package:training_log/core/design_system/tokens/app_radius.dart';

abstract final class AppTheme {
  static ThemeData light() => _buildTheme(
        brightness: Brightness.light,
        colorScheme: AppColorScheme.light(),
      );

  static ThemeData dark() => _buildTheme(
        brightness: Brightness.dark,
        colorScheme: AppColorScheme.dark(),
      );

  static ThemeData _buildTheme({
    required Brightness brightness,
    required ColorScheme colorScheme,
  }) {
    final glass = brightness == Brightness.light
        ? AppGlassTheme.light(colorScheme)
        : AppGlassTheme.dark(colorScheme);

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: Colors.transparent,
      cupertinoOverrideTheme: CupertinoThemeData(
        primaryColor: colorScheme.primary,
        barBackgroundColor: glass.navBar,
      ),
      appBarTheme: AppBarTheme(
        centerTitle: true,
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: colorScheme.onSurface,
        surfaceTintColor: Colors.transparent,
        titleTextStyle: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w600,
          letterSpacing: -0.4,
          color: colorScheme.onSurface,
        ),
      ),
      navigationBarTheme: NavigationBarThemeData(
        elevation: 0,
        height: AppDimens.navBarHeight,
        backgroundColor: Colors.transparent,
        indicatorColor: colorScheme.primary.withValues(alpha: 0.16),
        labelTextStyle: WidgetStateProperty.resolveWith(
          (states) => TextStyle(
            fontSize: 11,
            fontWeight: states.contains(WidgetState.selected) ? FontWeight.w600 : FontWeight.w500,
            letterSpacing: -0.1,
          ),
        ),
      ),
      cardTheme: CardThemeData(
        elevation: 0,
        color: Colors.transparent,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.lg),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: glass.surfaceElevated,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.md),
          borderSide: BorderSide(color: glass.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.md),
          borderSide: BorderSide(color: glass.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.md),
          borderSide: BorderSide(color: colorScheme.primary, width: 1.5),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppDimens.size16,
          vertical: AppDimens.size12,
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: const Size.fromHeight(48),
          padding: const EdgeInsets.symmetric(horizontal: AppDimens.size24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.pill),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            letterSpacing: -0.2,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          minimumSize: const Size.fromHeight(48),
          padding: const EdgeInsets.symmetric(horizontal: AppDimens.size24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.pill),
          ),
          side: BorderSide(color: glass.border),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            letterSpacing: -0.2,
          ),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        elevation: 0,
        highlightElevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.pill),
        ),
      ),
      dividerTheme: DividerThemeData(
        color: glass.border,
        thickness: 0.5,
      ),
      textTheme: _textTheme(colorScheme),
      extensions: [glass],
    );
  }

  static TextTheme _textTheme(ColorScheme scheme) {
    return TextTheme(
      headlineSmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.6,
        color: scheme.onSurface,
      ),
      titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.5,
        color: scheme.onSurface,
      ),
      titleMedium: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w600,
        letterSpacing: -0.4,
        color: scheme.onSurface,
      ),
      titleSmall: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        letterSpacing: -0.2,
        color: scheme.onSurface,
      ),
      bodyLarge: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.4,
        color: scheme.onSurface,
      ),
      bodyMedium: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.2,
        color: scheme.onSurfaceVariant,
      ),
      bodySmall: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.1,
        color: scheme.onSurfaceVariant,
      ),
    );
  }
}
