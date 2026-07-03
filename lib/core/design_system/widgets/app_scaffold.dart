import 'package:flutter/material.dart';
import 'package:training_log/core/design_system/widgets/app_background.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    required this.body,
    this.title,
    this.actions,
    this.floatingActionButton,
    this.centerTitle = true,
    super.key,
  });

  final Widget body;
  final String? title;
  final List<Widget>? actions;
  final Widget? floatingActionButton;
  final bool centerTitle;

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBody: true,
        appBar: title == null
            ? null
            : AppBar(
                title: Text(title!),
                centerTitle: centerTitle,
                actions: actions,
              ),
        body: body,
        floatingActionButton: floatingActionButton,
      ),
    );
  }
}
