import 'package:flutter/material.dart';
import 'package:timetap/app/constants/styles.dart';
import 'package:timetap/app/constants/colors.dart';
import 'package:timetap/app/constants/strings.dart';
import 'package:timetap/app/modules/home/views/home_view.dart';
import 'package:get/get.dart';

class DialogWidget extends StatelessWidget {
  final String score;
  final String attempts;

  const DialogWidget({super.key, required this.score, required this.attempts});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
          height: 200,
          child: Column(
            children: [
              Text(
                AppStrings.sorry,
                style: smallStyle.copyWith(color: AppColors.black),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Text(
                    AppStrings.totalScore,
                    style: smallStyle.copyWith(
                        fontWeight: FontWeight.bold, color: AppColors.black),
                  ),
                  Text(
                    score,
                    style: smallStyle.copyWith(color: AppColors.black),
                  )
                ],
              ),
              SizedBox(height: 4.0),
              Row(
                children: [
                  Text(
                    AppStrings.totalAttempts,
                    style: smallStyle.copyWith(
                        fontWeight: FontWeight.bold, color: AppColors.black),
                  ),
                  Text(
                    attempts,
                    style: smallStyle.copyWith(color: AppColors.black),
                  )
                ],
              ),
              SizedBox(height: 20.0),
              InkWell(
                onTap: () {
                  Get.offAll(() => HomeView());
                },
                child: Text(
                  "Ok",
                  style: smallStyle.copyWith(color: AppColors.black,fontWeight: FontWeight.bold),
                ),
              )
            ],
          )),
    );
  }
}
