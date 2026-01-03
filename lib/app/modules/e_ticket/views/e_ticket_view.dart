import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Custom_Files/custom_flights.dart';
import '../controllers/e_ticket_controller.dart';

class ETicketView extends GetView<ETicketController> {
  const ETicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Helper function to get font color based on theme
    Color fontColor() => Get.isDarkMode ? Colors.black : Colors.white;

    return Scaffold(
      // Background color depends on theme
      backgroundColor: Get.isDarkMode ? colorScheme.primary : Colors.blueAccent,

      // AppBar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // Transparent for overlay effect
        iconTheme: IconThemeData(color: fontColor()),
        title: Text('E-Ticket', style: TextStyle(color: fontColor())),
        actions: [
          Icon(Icons.download_for_offline_outlined, color: fontColor()),
        ],
        centerTitle: true,
      ),

      // Body
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          alignment: Alignment.topCenter,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Get.isDarkMode ? Colors.white70 : Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // QR/Barcode Image
                Image.asset('assets/images/Scanner/Scanner.png'),

                // Instruction Text
                Text(
                  'Show your ID and this barcode at the check-in gate',
                  style: TextStyle(color: Colors.black),
                ),

                // Divider
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.grey,
                ),

                // Flight Overview using CustomFlights widget
                CustomFlights(
                  image: AssetImage('assets/images/local/images.png'),
                  flightName: 'Emirates',
                  priceOrDate: '\$1,599.00',
                  takeoffTime: '09:00',
                  landingTime: '16:30',
                  duration: '7h 30m',
                  direct: 'Direct',
                ),

                // Divider
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.grey,
                ),

                // Passenger Name Row
                Row(
                  children: [
                    Text(
                      'Passenger Name',
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    Text(
                      'Mr.Andrew Ainsley',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),

                // Email Row
                Row(
                  children: [
                    Text('Email', style: TextStyle(color: Colors.black)),
                    Spacer(),
                    Text(
                      'andrewainsleygmail.com',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),

                // Phone Number Row
                Row(
                  children: [
                    Text('Phone Number', style: TextStyle(color: Colors.black)),
                    Spacer(),
                    Text(
                      '+1 111 467 378 399',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),

                // Class Row
                Row(
                  children: [
                    Text('Class', style: TextStyle(color: Colors.black)),
                    Spacer(),
                    Text('Economy', style: TextStyle(color: Colors.black)),
                  ],
                ),

                // Booking ID Row
                Row(
                  children: [
                    Text('Booking ID', style: TextStyle(color: Colors.black)),
                    Spacer(),
                    Text('DKG7542895', style: TextStyle(color: Colors.black)),
                  ],
                ),

                // Flight Number Row
                Row(
                  children: [
                    Text(
                      'Flight Number',
                      style: TextStyle(color: Colors.black),
                    ),
                    Spacer(),
                    Text('EK202', style: TextStyle(color: Colors.black)),
                  ],
                ),

                // Gate Row
                Row(
                  children: [
                    Text('Gate', style: TextStyle(color: Colors.black)),
                    Spacer(),
                    Text('25', style: TextStyle(color: Colors.black)),
                  ],
                ),

                // Seat Number Row
                Row(
                  children: [
                    Text('Seat Number', style: TextStyle(color: Colors.black)),
                    Spacer(),
                    Text('B2', style: TextStyle(color: Colors.black)),
                  ],
                ),

                // Divider
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.grey,
                ),

                // Footer Messages
                Text(
                  'Enjoy traveling around the world with us',
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  'www.airify.yourdomain',
                  style: TextStyle(
                    color: Get.isDarkMode
                        ? colorScheme.primary
                        : Colors.blueAccent,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
