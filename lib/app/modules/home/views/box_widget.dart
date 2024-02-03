import 'package:flutter/material.dart';
import 'package:timetap/app/constants/styles.dart';
import 'package:timetap/app/constants/colors.dart';


class BoxWidget extends StatelessWidget {
  final String title;
  final String value;

  const BoxWidget({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      width: 170,
      decoration: BoxDecoration(
          color: AppColors.red.withOpacity(0.5),
          border: Border.all(color: AppColors.red),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Text(
            title,
            style: smallStyle.copyWith(fontWeight: FontWeight.bold),
          ),
          Divider(height: 30),
          Text(
            value,
            style: smallStyle,
          )
        ],
      ),
    );
  }
}
