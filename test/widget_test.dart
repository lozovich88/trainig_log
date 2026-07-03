import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:training_log/app.dart';

void main() {
  testWidgets('WHEN app starts EXPECT navigation bar visible', (tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: GymWorkoutDiaryApp(),
      ),
    );
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 500));

    expect(find.byType(NavigationBar), findsOneWidget);
  });
}
