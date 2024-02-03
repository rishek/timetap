import 'package:get/get.dart';
import '../views/dialog_widget.dart';
import 'dart:math';
import 'dart:async';
import 'package:flutter/material.dart';


class HomeController extends GetxController {
  //TODO: Implement HomeController

  var secondsFromTap = 0.obs;
  var randomNum = 0.obs;
  var totalAttempts = 0.obs;
  var successfulAttempts = 0.obs;
  var timerValue = 5.obs;
  var counter = 0.obs;
  Timer? _timer;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }

  void handleTap(ctx) {
    counter.value++;
    secondsFromTap.value = DateTime.now().second;
    randomNum.value = _generateRandomNumber();
    if (randomNum.value == secondsFromTap.value) {
      successfulAttempts.value++;
    } else {
      totalAttempts.value++;
    }
    timerValue.value = 5;
    startTimer(ctx);
  }

  int _generateRandomNumber() {
    return Random().nextInt(60);
  }

  void startTimer(ctx) {
    _timer?.cancel();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (timerValue.value > 0) {
        timerValue.value--;
      } else {
        totalAttempts.value++;
        timer.cancel();
        _timer = null;
        showDialog(
            context: ctx,
            builder: (BuildContext context) {
              return Dialog(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  clipBehavior: Clip.antiAlias,
                  child: DialogWidget(
                    score: successfulAttempts.value.toString(),
                    attempts: totalAttempts.value.toString(),
                  ));
            });
      }
    });
  }
}
