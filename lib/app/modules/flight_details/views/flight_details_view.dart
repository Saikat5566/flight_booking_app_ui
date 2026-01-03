import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../Custom_Files/custom_flight_Details.dart';
import '../../../../Custom_Files/custom_flights.dart';
import '../../../../custom_files/custom_button.dart';
import '../../../routes/app_pages.dart';
import '../controllers/flight_details_controller.dart';

class FlightDetailsView extends GetView<FlightDetailsController> {
  const FlightDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // font color helper
    Color fontColor() => Get.isDarkMode ? Colors.black : Colors.white;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Get.isDarkMode
            ? colorScheme.primary
            : Colors.blueAccent,
        iconTheme: IconThemeData(color: fontColor()),
        title: Text('Flight Details', style: TextStyle(color: fontColor())),
        actions: [
          Icon(Icons.save_outlined, color: fontColor()),
          SizedBox(width: 10),
          Icon(Icons.share, color: fontColor()),
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 20),
            CustomFlights(
              image: AssetImage('assets/images/local/images.png'),
              flightName: 'Emirates',
              priceOrDate: 'Wed, DEC 27 2023',
              takeoffTime: '09:00',
              landingTime: '16:30',
              duration: '7h 30m',
              direct: 'Direct',
            ),
            SizedBox(height: 20),
            CustomFlightDetails(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        color: Get.isDarkMode ? Colors.black : Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Total price: 1 person(s)',style: TextStyle(color: Colors.blueGrey),),
                  Text(
                    '\$1,599.00',
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ],
              ),

              Spacer(),

              CustomButton(
                text: 'Continue',
                borderRadius: BorderRadius.circular(12),
                textColor: Colors.white,
                backgroundColor: Colors.blueAccent,
                minimumSize: Size(200, 50),
                onPressed: () {
                  Get.toNamed(Routes.FLIGHT_BOOKING_FLOW);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}