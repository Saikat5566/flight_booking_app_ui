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

    // font color helper
    Color fontColor() => Get.isDarkMode ? Colors.black : Colors.white;
    return Scaffold(
      backgroundColor: Get.isDarkMode ? colorScheme.primary : Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: fontColor()),
        title: Text('E-Ticket', style: TextStyle(color: fontColor())),
        actions: [
          Icon(Icons.download_for_offline_outlined, color: fontColor()),
        ],
        centerTitle: true,
      ),
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
                Image.asset('assets/images/Scanner/Scanner.png'),
                Text(
                  'Show your ID and this barcode at the check-in gate',
                  style: TextStyle(color: Colors.black),
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.grey,
                ),
                CustomFlights(
                  image: AssetImage('assets/images/local/images.png'),
                  flightName: 'Emirates',
                  priceOrDate: '\$1,599.00',
                  takeoffTime: '09:00',
                  landingTime: '16:30',
                  duration: '7h 30m',
                  direct: 'Direct',
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.grey,
                ),

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

                Row(
                  children: [
                    Text('Class', style: TextStyle(color: Colors.black)),
                    Spacer(),
                    Text('Economy', style: TextStyle(color: Colors.black)),
                  ],
                ),

                Row(
                  children: [
                    Text('Booking ID', style: TextStyle(color: Colors.black)),
                    Spacer(),
                    Text('DKG7542895', style: TextStyle(color: Colors.black)),
                  ],
                ),

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

                Row(
                  children: [
                    Text('Gate', style: TextStyle(color: Colors.black)),
                    Spacer(),
                    Text('25', style: TextStyle(color: Colors.black)),
                  ],
                ),

                Row(
                  children: [
                    Text('Seat Number', style: TextStyle(color: Colors.black)),
                    Spacer(),
                    Text('B2', style: TextStyle(color: Colors.black)),
                  ],
                ),

                Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.grey,
                ),

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
