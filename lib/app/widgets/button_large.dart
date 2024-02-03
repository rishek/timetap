import 'package:flutter/material.dart';
import 'package:timetap/app/constants/styles.dart';
import 'package:timetap/app/constants/colors.dart';
import 'package:timetap/app/constants/strings.dart';

class LargeButton extends StatelessWidget {
  final String title;
  const LargeButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 48,
      width: double.infinity,
      child: Text(
        title,
        style: smallStyle.copyWith(
            color: AppColors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
