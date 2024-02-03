import 'package:flutter/material.dart';
import 'package:timetap/app/constants/styles.dart';
import 'package:timetap/app/constants/colors.dart';
import 'package:timetap/app/constants/strings.dart';


class GameStatusWidget extends StatelessWidget {
  final String title;
  final String score;
  final String attempts;
  final Color color;

  const GameStatusWidget(
      {super.key,
      required this.title,
      required this.score,
      required this.attempts,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: color.withOpacity(0.5),
          border: Border.all(color: color),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Text(
            title,
            style: smallStyle.copyWith(fontWeight: FontWeight.bold),
          ),
          Divider(height: 30),
          Row(
            children: [
              Text(AppStrings.totalScore,
                style: smallStyle.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                score,
                style: smallStyle,
              )
            ],
          ),
          Row(
            children: [
              Text(    AppStrings.totalAttempts,
                style: smallStyle.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                attempts,
                style: smallStyle,
              )
            ],
          )
        ],
      ),
    );
  }
}
