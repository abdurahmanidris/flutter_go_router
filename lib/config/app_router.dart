import 'package:flutter/material.dart';
import 'package:flutter_go_router/screens/category_screen.dart';
import 'package:flutter_go_router/screens/product_list_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter myRouter = GoRouter(debugLogDiagnostics: true, routes: <GoRoute>[
  GoRoute(
    path: '/',
    name: 'home',
    builder: (BuildContext context, GoRouterState state) {
      return const CategoryScreen();
    },
    routes: [
      GoRoute(
        path: 'product_list',
        name: 'product_list',
        builder: (BuildContext context, GoRouterState state) {
          return const ProductListScreen();
        },
      ),
    ],
  ),
  /*GoRoute(
    path: '/product_list',
    builder: (BuildContext context, GoRouterState state) {
      return const ProductListScreen();
    },
  ),*/
]);
