import 'package:flutter/material.dart';
import 'package:timetap/app/constants/styles.dart';
import 'package:timetap/app/constants/colors.dart';
import 'package:timetap/app/constants/strings.dart';
import 'package:timetap/app/widgets/button_large.dart';

import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import '../views/timer_widget.dart';
import '../views/box_widget.dart';
import '../views/game_status_widget.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello, User',
              style: normalStyle.copyWith(
                  color: AppColors.white, fontWeight: FontWeight.bold)),
          backgroundColor: AppColors.black,
        ),
        body: Obx(
          () => Container(
            width: double.infinity,
            color: AppColors.black,
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BoxWidget(
                        title: AppStrings.currentSec,
                        value: controller.secondsFromTap.value.toString()),
                    BoxWidget(
                        title: AppStrings.randomNum,
                        value: controller.randomNum.value.toString()),
                  ],
                ),
                SizedBox(height: 16),
                controller.counter.value == 0
                    ? Container()
                    : GameStatusWidget(
                        title: controller.randomNum.value ==
                                controller.secondsFromTap.value
                            ? AppStrings.success
                            : AppStrings.tryAgain,
                        score: controller.successfulAttempts.value.toString(),
                        attempts: controller.totalAttempts.value.toString(),
                        color: controller.randomNum.value ==
                                controller.secondsFromTap.value
                            ? AppColors.green
                            : AppColors.lightYellow,
                      ),
                TimerWidget(timerValue: controller.timerValue.value),
                Material(
                    color: AppColors.secondary,
                    borderRadius: BorderRadius.circular(50),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(50),
                      onTap: () {
                        controller.handleTap(context);
                      },
                      child: LargeButton(title: "Tap"),
                    )),
              ],
            ),
          ),
        ));
  }
}
