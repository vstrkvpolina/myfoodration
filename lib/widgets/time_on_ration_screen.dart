import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimeOnRationScreen extends StatelessWidget {
  const TimeOnRationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final timeString = DateFormat('HH:mm').format(now);
    final dateString = DateFormat('dd.MM.yy').format(now);

    return Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            timeString,
            // style: ,
            // color: , //TODO
            // fontSize:,
          ),
          Text(
            dateString,
            // style: ,
            // color: , //TODO
            // fontSize:,
          ),
        ],
      ),
    );
  }
}
