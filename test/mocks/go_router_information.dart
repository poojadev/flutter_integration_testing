import 'package:flutter/material.dart';
import 'package:flutter_widget_testing/home/home_page.dart';
import 'package:flutter_widget_testing/registration/presentation/pages/registration_page.dart';
import 'package:go_router/go_router.dart';
import 'package:mockito/mockito.dart';
class MockGoRouter extends Mock implements GoRouter {}


class GoRouterInformation  {
 static final  GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const RegistrationPage();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'homepage',
            builder: (BuildContext context, GoRouterState state) {
              return const HomePage();
            },
          ),



        ],
      ),
    ],
  );
}