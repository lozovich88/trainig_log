import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppSectionTitle extends StatelessWidget {
  const AppSectionTitle({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}

class AppErrorText extends StatelessWidget {
  const AppErrorText({
    required this.message,
    super.key,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(context).colorScheme.error,
          ),
    );
  }
}

class AppLoadingView extends StatelessWidget {
  const AppLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CupertinoActivityIndicator(radius: 14),
    );
  }
}
