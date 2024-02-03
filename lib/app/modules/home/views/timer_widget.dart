import 'package:flutter/material.dart';
import 'package:timetap/app/constants/styles.dart';
import 'package:timetap/app/constants/colors.dart';

class TimerWidget extends StatelessWidget {
  final int timerValue;

  const TimerWidget({super.key, required this.timerValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      child: Transform.scale(
        scale: 2.5,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CircularProgressIndicator(
              backgroundColor: AppColors.grey,
              value: timerValue / 5,
              strokeWidth: 3,
              color: AppColors.red,
            ),
            Text(
              "$timerValue",
              style: smallStyle.copyWith(fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
