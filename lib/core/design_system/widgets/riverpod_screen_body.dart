import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:training_log/core/design_system/widgets/app_state_views.dart';
import 'package:training_log/core/design_system/widgets/app_typography.dart';
import 'package:training_log/core/extensions/l10n_extension.dart';
import 'package:training_log/core/presentation/widgets/async_state_view.dart';
import 'package:training_log/core/state/ui_state.dart';

class RiverpodScreenBody<T> extends StatelessWidget {
  const RiverpodScreenBody({
    required this.asyncValue,
    required this.contentBuilder,
    this.onRetry,
    this.emptyBuilder,
    super.key,
  });

  final AsyncValue<UiState<T>> asyncValue;
  final Widget Function(BuildContext context, T data) contentBuilder;
  final VoidCallback? onRetry;
  final Widget Function(BuildContext context)? emptyBuilder;

  @override
  Widget build(BuildContext context) {
    return asyncValue.when(
      loading: () => const AppLoadingView(),
      error: (error, _) => AppErrorView(
        message: error.toString(),
        onRetry: onRetry,
        retryLabel: context.l10n.errorRetry,
      ),
      data: (state) => AsyncStateView<T>(
        state: state,
        onRetry: onRetry,
        emptyBuilder: emptyBuilder,
        contentBuilder: contentBuilder,
      ),
    );
  }
}
