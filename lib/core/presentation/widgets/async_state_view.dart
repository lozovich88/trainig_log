import 'package:flutter/material.dart';
import 'package:training_log/core/design_system/widgets/app_state_views.dart';
import 'package:training_log/core/design_system/widgets/app_typography.dart';
import 'package:training_log/core/extensions/l10n_extension.dart';
import 'package:training_log/core/state/ui_state.dart';

class AsyncStateView<T> extends StatelessWidget {
  const AsyncStateView({
    required this.state,
    required this.contentBuilder,
    this.emptyBuilder,
    this.onRetry,
    super.key,
  });

  final UiState<T> state;
  final Widget Function(BuildContext context, T data) contentBuilder;
  final Widget Function(BuildContext context)? emptyBuilder;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return switch (state) {
      UiLoading<T>() => const AppLoadingView(),
      UiEmpty<T>() =>
        emptyBuilder?.call(context) ??
            AppEmptyStateView(
              icon: Icons.inbox_outlined,
              title: context.l10n.errorGeneric,
            ),
      UiError<T>(:final message) => AppErrorView(
          message: message,
          onRetry: onRetry,
          retryLabel: onRetry == null ? null : context.l10n.errorRetry,
        ),
      UiContent<T>(:final data) => contentBuilder(context, data),
    };
  }
}
