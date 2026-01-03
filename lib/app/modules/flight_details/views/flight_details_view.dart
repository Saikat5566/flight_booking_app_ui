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

    // Helper function to get font color based on theme
    Color fontColor() => Get.isDarkMode ? Colors.black : Colors.white;

    return Scaffold(
      // Scaffold background
      backgroundColor: theme.scaffoldBackgroundColor,

      // AppBar
      appBar: AppBar(
        backgroundColor: Get.isDarkMode
            ? colorScheme.primary
            : Colors.blueAccent,
        iconTheme: IconThemeData(color: fontColor()),
        title: Text('Flight Details', style: TextStyle(color: fontColor())),
        actions: [
          Icon(Icons.save_outlined, color: fontColor()), // Save icon
          SizedBox(width: 10),
          Icon(Icons.share, color: fontColor()), // Share icon
        ],
        centerTitle: true,
      ),

      // Body
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 20),

            // Flight overview using CustomFlights widget
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

            // Flight details using CustomFlightDetails widget
            CustomFlightDetails(),
          ],
        ),
      ),

      // Bottom Navigation / Continue button section
      bottomNavigationBar: Container(
        height: 80,
        color: Get.isDarkMode ? Colors.black : Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              // Price info
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total price: 1 person(s)',
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  Text(
                    '\$1,599.00',
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ],
              ),

              Spacer(),

              // Continue button
              CustomButton(
                text: 'Continue',
                borderRadius: BorderRadius.circular(12),
                textColor: Colors.white,
                backgroundColor: Colors.blueAccent,
                onPressed: () {
                  Get.toNamed(
                    Routes.FLIGHT_BOOKING_FLOW,
                  ); // Navigate to booking flow
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
