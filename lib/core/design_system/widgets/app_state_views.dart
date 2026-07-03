import 'package:flutter/material.dart';
import 'package:training_log/core/design_system/tokens/app_dimens.dart';
import 'package:training_log/core/design_system/widgets/app_button.dart';

class AppErrorView extends StatelessWidget {
  const AppErrorView({
    required this.message,
    this.onRetry,
    this.retryLabel,
    super.key,
  });

  final String message;
  final VoidCallback? onRetry;
  final String? retryLabel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppDimens.size24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline_rounded,
              size: AppDimens.size48,
              color: Theme.of(context).colorScheme.error,
            ),
            const SizedBox(height: AppDimens.size16),
            Text(
              message,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            if (onRetry != null && retryLabel != null) ...[
              const SizedBox(height: AppDimens.size16),
              AppPrimaryButton(
                label: retryLabel!,
                onPressed: onRetry,
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class AppEmptyStateView extends StatelessWidget {
  const AppEmptyStateView({
    required this.icon,
    required this.title,
    this.actionLabel,
    this.onAction,
    super.key,
  });

  final IconData icon;
  final String title;
  final String? actionLabel;
  final VoidCallback? onAction;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppDimens.size24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: AppDimens.size72,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(height: AppDimens.size24),
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            if (actionLabel != null && onAction != null) ...[
              const SizedBox(height: AppDimens.size24),
              AppPrimaryButton(
                label: actionLabel!,
                onPressed: onAction,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
