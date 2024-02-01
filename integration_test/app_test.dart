import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_widget_testing/home/home_page.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_widget_testing/main.dart' as app;
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('integration test', () {
    testWidgets(
        'test -When submit button is pressed navigation should redirect to Homepage ', (
        tester) async {
      app.main();
      await tester.pumpAndSettle();
      await tester.enterText
        (find.byKey(const Key('registerName')), 'test');
      await tester.pumpAndSettle(const Duration(seconds: 3));
      await tester.enterText
        (find.byKey(const Key('registerEmailId')), 'test@gmail.com');
      await tester.pumpAndSettle(const Duration(seconds: 3));
      await tester.enterText
        (find.byKey(const Key('registerPassword')), '12345678');
      await tester.pumpAndSettle(const Duration(seconds: 3));
      await tester.enterText
        (find.byKey(const Key('registerCPassword')), '12345678');
      await tester.pumpAndSettle(const Duration(seconds: 3));
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle(const Duration(seconds: 3));
      expect(find.byType(HomePage), findsOneWidget);
      await tester.pumpAndSettle(const Duration(seconds: 3));

    });
  });
  tearDownAll(() => true);
}