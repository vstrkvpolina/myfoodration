import 'package:flutter/material.dart';
import 'package:myfoodration/config/config.dart';
import 'package:myfoodration/config/routes/routes.dart';
import 'package:myfoodration/screens/screens.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyfoodRation extends ConsumerWidget {
  const MyfoodRation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final routeConfig = ref.watch(routesProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      routerConfig: routeConfig, 
    );
  }
}