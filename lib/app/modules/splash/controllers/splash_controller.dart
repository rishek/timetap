import 'package:get/get.dart';
import 'package:timetap/app/modules/home/views/home_view.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  var opacity = 0.0.obs;

  @override
  void onInit() {
    Future.delayed(Duration(milliseconds: 900), () {
      opacity.value = 1.0;
    });
    delayAndGo();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void delayAndGo() async {
    await Future.delayed(
      Duration(milliseconds: 3000),
    );
    Get.offAll(() => HomeView(), transition: Transition.fade);
  }
}
