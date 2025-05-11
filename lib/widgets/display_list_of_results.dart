import 'package:flutter/material.dart';
import 'package:myfoodration/utils/extensions.dart';
import 'package:myfoodration/widgets/common_container.dart';
import 'package:myfoodration/data/data.dart';

class DisplayListOfResults extends StatelessWidget {
  const DisplayListOfResults({super.key, required this.results});

  final List<Result> results;

  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;
    return CommonContainer(
      height: deviceSize.height * 0.3,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: results.length,
        padding: EdgeInsets.zero,
        itemBuilder: (ctx, index) {
          return const Text('Home');
        },
      ),
    );
  }
}
//TODO