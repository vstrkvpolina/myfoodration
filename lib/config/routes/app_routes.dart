import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myfoodration/config/routes/routes.dart';
import 'package:myfoodration/screens/adding_screen.dart';
import 'package:myfoodration/screens/home_screen.dart';

final navigationKey = GlobalKey<NavigatorState>();

final appRoutes = [
  GoRoute(
    path: RouteLocation.home,
    parentNavigatorKey: navigationKey,
    builder: HomeScreen.builder,
  ),
  GoRoute(
    path: RouteLocation.addingScreen,
    parentNavigatorKey: navigationKey,
    builder: AddingScreen.builder,
  ),
];
