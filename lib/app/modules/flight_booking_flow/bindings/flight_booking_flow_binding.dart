import 'package:get/get.dart';

import '../controllers/flight_booking_flow_controller.dart';

class FlightBookingFlowBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FlightBookingFlowController>(
      () => FlightBookingFlowController(),
    );
  }
}
