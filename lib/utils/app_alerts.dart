import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myfoodration/data/models/food.dart';
import 'package:myfoodration/providers/food/food.dart';
import 'package:myfoodration/utils/utils.dart';
import 'package:go_router/go_router.dart';

class AppAlerts {
  AppAlerts._();

  static displaySnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: context.textTheme.bodyLarge?.copyWith(
            color: context.colorScheme.surface,
          ),
        ),
        backgroundColor: context.colorScheme.primary,
      ),
    );
  }

  static Future<void> showDeleteAlertDialog(
      BuildContext context, WidgetRef ref, Food food) async {
    Widget cancelButton =
        TextButton(onPressed: () => context.pop(), child: const Text('нет'));
    Widget deleteButton = TextButton(onPressed: () async{
      await ref.read(foodProvider.notifier).deleteFood(food).then((value) {
        AppAlerts.displaySnackBar(context, 'Еда');
        context.pop();
      });
    }, child: const Text('да'));

    AlertDialog alert = AlertDialog(
      title: const Text('Уверены?'),
      actions: [
        deleteButton,
        cancelButton,
      ],
    );
    await showDialog(
        context: context,
        builder: (ctx) {
          return alert;
        });
  }
}
