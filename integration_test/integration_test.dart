import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:belajar_testing/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Counter increments and decrements', (WidgetTester tester) async {
    app.main(); // Panggil main() dari aplikasi Anda

    await tester.pumpAndSettle(); // Tunggu hingga semua widget selesai diproses

    // Find the counter text widget
    final counterTextFinder = find.byKey(const ValueKey('counterText'));

    // Find the increment and decrement buttons
    final incrementButtonFinder = find.byKey(const ValueKey('incrementButton'));
    final decrementButtonFinder = find.byKey(const ValueKey('decrementButton'));

    // Initial counter value should be 0
    expect(find.text('0'), findsOneWidget);

    // Tap the increment button and verify the counter value increases
    await tester.tap(incrementButtonFinder);
    await tester.pumpAndSettle();
    expect(find.text('1'), findsOneWidget);

    // Tap the decrement button and verify the counter value decreases
    await tester.tap(decrementButtonFinder);
    await tester.pumpAndSettle();
    expect(find.text('0'), findsOneWidget);
  });
}
