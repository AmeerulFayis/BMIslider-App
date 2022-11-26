import 'package:get/get.dart';

import '../presentation/screens/home_screen/home_screen_controller.dart';

class DependencyInjection {
  static init() {
    Get.lazyPut(() => HomeScreenController());
  }
}
