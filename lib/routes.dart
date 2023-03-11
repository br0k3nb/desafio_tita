import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import './main.dart';
import './widgets/color_pages.dart';

final routes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Home(),
    ),
    GoRoute(
      path: '/color/:name/:color',
      pageBuilder: (context, state) {
        final String name = (state.params["name"] as String);
        final String color = (state.params["color"] as String);

        return CustomTransitionPage(
            child: ColorPages(color, name),
            transitionDuration: const Duration(seconds: 1),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity:
                  CurveTween(curve: Curves.easeInOutCirc).animate(animation),
                child: child,
              );
            }
        );
      }
    )
  ]
);