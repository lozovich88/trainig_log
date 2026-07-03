import 'package:flutter/material.dart';
import 'package:training_log/core/design_system/tokens/app_dimens.dart';
import 'package:training_log/core/design_system/widgets/glass_surface.dart';

class AppPrimaryButton extends StatelessWidget {
  const AppPrimaryButton({
    required this.label,
    required this.onPressed,
    super.key,
  });

  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      child: Text(label),
    );
  }
}

class AppSecondaryButton extends StatelessWidget {
  const AppSecondaryButton({
    required this.label,
    required this.onPressed,
    this.icon,
    super.key,
  });

  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    if (icon != null) {
      return OutlinedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon),
        label: Text(label),
      );
    }

    return OutlinedButton(
      onPressed: onPressed,
      child: Text(label),
    );
  }
}

class AppGlassFab extends StatelessWidget {
  const AppGlassFab({
    required this.icon,
    required this.onPressed,
    super.key,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GlassSurface(
      borderRadius: AppDimens.size32,
      elevated: true,
      onTap: onPressed,
      padding: const EdgeInsets.all(AppDimens.size16),
      child: Icon(
        icon,
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
