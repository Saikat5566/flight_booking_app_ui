import 'package:get/get.dart';

import '../modules/e_ticket/bindings/e_ticket_binding.dart';
import '../modules/e_ticket/views/e_ticket_view.dart';
import '../modules/flight_booking_flow/bindings/flight_booking_flow_binding.dart';
import '../modules/flight_booking_flow/views/flight_booking_flow_view.dart';
import '../modules/flight_details/bindings/flight_details_binding.dart';
import '../modules/flight_details/views/flight_details_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/payment_confirmation/bindings/payment_confirmation_binding.dart';
import '../modules/payment_confirmation/views/payment_confirmation_view.dart';
import '../modules/search_flight_screen/bindings/search_flight_screen_binding.dart';
import '../modules/search_flight_screen/views/search_flight_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH_FLIGHT_SCREEN,
      page: () => const SearchFlightScreenView(),
      binding: SearchFlightScreenBinding(),
    ),
    GetPage(
      name: _Paths.FLIGHT_DETAILS,
      page: () => const FlightDetailsView(),
      binding: FlightDetailsBinding(),
    ),
    GetPage(
      name: _Paths.FLIGHT_BOOKING_FLOW,
      page: () => const FlightBookingFlowView(),
      binding: FlightBookingFlowBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT_CONFIRMATION,
      page: () => const PaymentConfirmationView(),
      binding: PaymentConfirmationBinding(),
    ),
    GetPage(
      name: _Paths.E_TICKET,
      page: () => const ETicketView(),
      binding: ETicketBinding(),
    ),
  ];
}
