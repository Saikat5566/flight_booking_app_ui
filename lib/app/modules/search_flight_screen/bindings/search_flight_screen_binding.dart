import 'package:get/get.dart';

import '../controllers/search_flight_screen_controller.dart';

class SearchFlightScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchFlightScreenController>(
      () => SearchFlightScreenController(),
    );
  }
}
