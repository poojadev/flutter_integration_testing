import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_widget_testing/home/home_page.dart';
import 'package:flutter_widget_testing/registration/presentation/pages/registration_page.dart';

import '../../../mocks/go_router_information.dart';

main()
{
  group('registration page', () {
    testWidgets('test -if All text fields are present', (tester)  async {
      await tester.pumpWidget( const MaterialApp(home: RegistrationPage(),));
      expect(find.byKey(const Key('registerName')), findsOneWidget);
      expect(find.byKey(const Key('registerEmailId')), findsOneWidget);
      expect(find.byKey(const Key('registerPassword')), findsOneWidget);
      expect(find.byKey(const Key('registerCPassword')), findsOneWidget);
    });


    testWidgets('test -When submit button is pressed navigation should redirect to Homepage ', (tester)  async {
      await tester.pumpWidget(
        MaterialApp.router(
          routerConfig:GoRouterInformation.router,
        ),
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();
      expect(find.byType(HomePage), findsOneWidget);

    });
  });
}
