import 'package:belanja/models/item.dart';
import 'package:belanja/pages/home_page.dart';
import 'package:belanja/pages/item_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'item',
          builder: (context, state) {
            final item = state.extra as Item;
            return ItemPage(
              item: item,
            );
          },
        ),
      ],
    ),
  ],
);

void main() {
  runApp(MaterialApp.router(routerConfig: _router));
}
