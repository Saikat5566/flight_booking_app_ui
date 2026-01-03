import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Custom_Files/custom_booking_steps.dart';
import '../../../../Custom_Files/custom_flight_Details.dart';
import '../../../../Custom_Files/custom_flights.dart';
import '../../../../Custom_Files/custom_user_info.dart';
import '../../../../custom_files/custom_button.dart';
import '../../../routes/app_pages.dart';
import '../controllers/flight_booking_flow_controller.dart';

class FlightBookingFlowView extends GetView<FlightBookingFlowController> {
  const FlightBookingFlowView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Helper function to get font color based on theme
    Color fontColor() => Get.isDarkMode ? Colors.black : Colors.white;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,

      // AppBar
      appBar: AppBar(
        iconTheme: IconThemeData(color: fontColor()),
        backgroundColor: Get.isDarkMode
            ? colorScheme.primary
            : Colors.blueAccent,
        title: Text('Fill In Details', style: TextStyle(color: fontColor())),
        centerTitle: true,
      ),

      // Body
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Booking Steps Top Row
            Container(
              height: 80,
              color: Get.isDarkMode ? colorScheme.primary : Colors.blueAccent,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomBookingSteps(
                      book: 'Book',
                      color: Colors.white,
                      stepTextColor: Get.isDarkMode
                          ? Colors.cyan
                          : Colors.lightBlue,
                      steps: '1',
                      isCompleted: false,
                    ),

                    CustomBookingSteps(
                      book: 'Pay',
                      color: Get.isDarkMode ? Colors.cyan : Colors.lightBlue,
                      stepTextColor: fontColor(),
                      steps: '2',
                      isCompleted: false,
                    ),

                    CustomBookingSteps(
                      book: 'E-Ticket',
                      color: Get.isDarkMode ? Colors.cyan : Colors.lightBlue,
                      stepTextColor: fontColor(),
                      steps: '3',
                      isCompleted: false,
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),

            // Flight Information and Booking Details
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  // Flight Overview Card
                  CustomFlights(
                    image: AssetImage('assets/images/local/images.png'),
                    flightName: 'Emirates',
                    priceOrDate: 'Wed,DEC 27 2023',
                    takeoffTime: '09:00',
                    landingTime: '16:30',
                    duration: "7h 30m",
                    direct: 'Direct',
                  ),

                  SizedBox(height: 20),

                  // Flight Detailed Information
                  CustomFlightDetails(),

                  SizedBox(height: 20),

                  // Contact Details Section
                  CustomUserInfo(
                    headText: 'Contact Details',
                    prefixIcon: Icons.person_2_outlined,
                    suffixIcon: Icons.edit,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text(
                          'Andrew Ainsley',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'anrewainsley@gmail.com',
                              style: TextStyle(color: Colors.black),
                            ),
                            Spacer(),
                            Text(
                              '+1 111 467 378 399',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),

                  // Passenger Details Section
                  CustomUserInfo(
                    headText: 'Passenger(s) Details',
                    prefixIcon: Icons.group,
                    suffixIcon: Icons.add,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text(
                          'Passenger',
                          style: TextStyle(color: Colors.black),
                        ),
                        // Passenger Name Dropdown Container
                        Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Text(
                                  'Mr.Andrew Ainsley',
                                  style: TextStyle(color: Colors.black),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_downward_outlined,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),

                  // Seat Number Section
                  CustomUserInfo(
                    headText: 'Seat Number',
                    prefixIcon: Icons.airline_seat_legroom_normal,
                    suffixIcon: Icons.arrow_forward_ios,
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.black12,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Center(
                              child: Row(
                                children: [
                                  Text(
                                    'Mr. Andrew Ainsley',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  Spacer(),
                                  Text(
                                    'B2',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),

                  // Price Details Section
                  CustomUserInfo(
                    headText: 'Price Details',
                    prefixIcon: Icons.monetization_on_outlined,
                    child: Column(
                      children: [
                        // Individual price rows
                        Row(
                          children: [
                            Text(
                              'Emiraties (Adult) x1',
                              style: TextStyle(color: Colors.black),
                            ),
                            Spacer(),
                            Text(
                              '\$1,599.00',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Travel Insurance',
                              style: TextStyle(color: Colors.black),
                            ),
                            Spacer(),
                            Text('\$45.00', style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Tax', style: TextStyle(color: Colors.black)),
                            Spacer(),
                            Text(
                              '\$25.00',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        // Divider
                        Container(
                          height: 1,
                          width: double.infinity,
                          color: Colors.grey,
                        ),
                        Row(
                          children: [
                            Text(
                              'Total Price',
                              style: TextStyle(color: Colors.black),
                            ),
                            Spacer(),
                            Text(
                              '\$1,669.00',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Continue Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomButton(
                text: 'Continue',
                borderRadius: BorderRadius.circular(14),
                textColor: Colors.white,
                backgroundColor: Get.isDarkMode
                    ? colorScheme.primary
                    : Colors.blueAccent,
                minimumSize: Size(double.infinity, 50),
                onPressed: () {
                  Get.toNamed(Routes.PAYMENT_CONFIRMATION);
                },
              ),
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
