import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../../Custom_Files/custom_date_time_containers.dart';
import '../../../../Custom_Files/custom_flights.dart';
import '../../../routes/app_pages.dart';
import '../controllers/search_flight_screen_controller.dart';

class SearchFlightScreenView extends GetView<SearchFlightScreenController> {
  const SearchFlightScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Helper function for font color based on theme
    Color fontColor() => Get.isDarkMode ? Colors.black : Colors.white;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,

      // AppBar
      appBar: AppBar(
        iconTheme: IconThemeData(color: fontColor()),
        backgroundColor: Get.isDarkMode
            ? colorScheme.primary
            : Colors.blueAccent,
        title: Text('Search Flights', style: TextStyle(color: fontColor())),
        actions: [Icon(Icons.more_vert, color: fontColor())],
        centerTitle: true,
      ),

      // Body
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top Flight Info Container
            Container(
              color: Get.isDarkMode ? colorScheme.primary : Colors.blueAccent,
              height: 180,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 15),

                  // Flight Route Row (From → Flight → To)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // From Location
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'JFK',
                            style: TextStyle(
                              color: Get.isDarkMode
                                  ? Colors.black
                                  : Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'New York',
                            style: TextStyle(
                              color: Get.isDarkMode
                                  ? Colors.black
                                  : Colors.white,
                            ),
                          ),
                        ],
                      ),

                      // Flight Icon + Seat Info
                      Column(
                        children: [
                          Icon(
                            Icons.flight_takeoff,
                            color: Get.isDarkMode ? Colors.black : Colors.white,
                          ),
                          Text(
                            '1 Seat · Economy',
                            style: TextStyle(
                              color: Get.isDarkMode
                                  ? Colors.black
                                  : Colors.white,
                            ),
                          ),
                        ],
                      ),

                      // To Location
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'CDG',
                            style: TextStyle(
                              color: Get.isDarkMode
                                  ? Colors.black
                                  : Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'Paris',
                            style: TextStyle(
                              color: Get.isDarkMode
                                  ? Colors.black
                                  : Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Horizontal Date Scroll
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        // Calendar Icon Container
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Get.isDarkMode
                                  ? Colors.black
                                  : Colors.white,
                            ),
                          ),
                          child: Icon(
                            Icons.calendar_month_outlined,
                            color: Get.isDarkMode ? Colors.black : Colors.white,
                          ),
                        ),

                        const SizedBox(width: 10),

                        // Vertical Divider
                        Container(
                          height: 70,
                          width: 1,
                          color: Get.isDarkMode ? Colors.black : Colors.white,
                        ),

                        const SizedBox(width: 10),

                        // Date Containers
                        CustomDateTimeContainers(date: '25', day: 'Mon'),
                        const SizedBox(width: 10),
                        CustomDateTimeContainers(date: '26', day: 'Tue'),
                        const SizedBox(width: 10),
                        CustomDateTimeContainers(date: '27', day: 'Wed'),
                        const SizedBox(width: 10),
                        CustomDateTimeContainers(date: '28', day: 'Thu'),
                        const SizedBox(width: 10),
                        CustomDateTimeContainers(date: '29', day: 'Fri'),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Flights List Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  // Single Flight Card with GestureDetector for navigation
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.FLIGHT_DETAILS);
                    },
                    child: CustomFlights(
                      image: const AssetImage('assets/images/local/images.png'),
                      flightName: 'Emirates',
                      priceOrDate: '\$1,599.00',
                      takeoffTime: '09:00',
                      landingTime: '16:30',
                      duration: '7h 30m',
                      direct: 'Direct',
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Second Flight
                  CustomFlights(
                    image: const AssetImage(
                      'assets/images/local/lufthansa_bot.jpg',
                    ),
                    flightName: 'Lufthansa',
                    priceOrDate: '\$1,250.00',
                    takeoffTime: '10:30',
                    landingTime: '21:15',
                    duration: '10h 45m',
                    direct: '1 stop',
                  ),

                  const SizedBox(height: 20),

                  // Third Flight
                  CustomFlights(
                    image: const AssetImage(
                      'assets/images/local/141-logo.webp',
                    ),
                    flightName: 'Delta Air Lines',
                    priceOrDate: '\$1,650.00',
                    takeoffTime: '10:00',
                    landingTime: '23:30',
                    duration: '13h 30m',
                    direct: '2 stop',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),

      // Bottom Navigation / Filter Row
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          color: Get.isDarkMode ? colorScheme.primary : Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.swap_vert, color: Colors.black),
            Text('Sort', style: TextStyle(color: Colors.black)),
            Container(height: 50, width: 2, color: Colors.black),
            Icon(Icons.filter_list, color: Colors.black),
            Text('Filter', style: TextStyle(color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
