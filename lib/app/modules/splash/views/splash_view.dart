import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timetap/app/constants/colors.dart';
import 'package:timetap/app/constants/styles.dart';
import '../controllers/splash_controller.dart';
import 'package:timetap/app/constants/strings.dart';

class SplashView extends GetView<SplashController> {
  SplashView({Key? key}) : super(key: key);

  @override
  final controller = Get.put(SplashController());

  Widget build(BuildContext context) {
    return Material(
      child: Obx(
        () => Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          color: AppColors.black,
          child: AnimatedOpacity(
            opacity: controller.opacity.value,
            duration: Duration(seconds: 1), // Adjust the duration as needed
            child: Text(
              AppStrings.appName,
              style: bigStyle.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
