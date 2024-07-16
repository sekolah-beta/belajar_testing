import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:belajar_testing/main.dart';

void main() {
  group('Counter App Tests', () {
    testWidgets('Counter increments test', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const MyApp());

      // Verify that our counter starts at 0.
      expect(find.text('0'), findsOneWidget);
      expect(find.text('1'), findsNothing);

      // Tap the '+' icon and trigger a frame.
      await tester.tap(find.byKey(const Key('incrementButton')));
      await tester.pump();

      // Verify that our counter has incremented.
      expect(find.text('0'), findsNothing);
      expect(find.text('1'), findsOneWidget);

      // Tap the '+' icon again and trigger a frame.
      await tester.tap(find.byKey(const Key('incrementButton')));
      await tester.pump();

      // Verify that our counter has incremented again.
      expect(find.text('1'), findsNothing);
      expect(find.text('2'), findsOneWidget);
    });

    testWidgets('Counter decrements test', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const MyApp());

      // Verify that our counter starts at 0.
      expect(find.text('0'), findsOneWidget);
      expect(find.text('-1'), findsNothing);

      // Tap the '-' icon and trigger a frame.
      await tester.tap(find.byKey(const Key('decrementButton')));
      await tester.pump();

      // Verify that our counter has decremented.
      expect(find.text('0'), findsNothing);
      expect(find.text('-1'), findsOneWidget);

      // Tap the '-' icon again and trigger a frame.
      await tester.tap(find.byKey(const Key('decrementButton')));
      await tester.pump();

      // Verify that our counter has decremented again.
      expect(find.text('-1'), findsNothing);
      expect(find.text('-2'), findsOneWidget);
    });
  });
}
