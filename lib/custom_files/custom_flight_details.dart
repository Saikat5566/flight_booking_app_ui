
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class CustomFlightDetails extends StatelessWidget {
  const CustomFlightDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Color fontColor() => Get.isDarkMode ? Colors.white : Colors.black;

    return Container(
      height: 350,
      decoration: BoxDecoration(
        color: Get.isDarkMode ? Colors.white70 : Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),

      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                  child: Image.asset(
                    'assets/images/plane/a5e2a89c1e1fc6da36170659dc0339f3.png',
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Original',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '\$1,599.00',
                          style: TextStyle(color: Colors.blueAccent),
                        ),
                        SizedBox(width: 5),
                        Text('/pax', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            Container(height: 1, width: double.infinity, color: Colors.grey),

            Row(
              children: [
                Icon(Icons.work_outline_outlined, color: Colors.black),
                SizedBox(width: 10),
                Text(
                  'Cabin Baggage 1 x 7 kg',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),

            Row(
              children: [
                Icon(Icons.shopping_bag_outlined, color: Colors.black),
                SizedBox(width: 10),
                Text(
                  'Baggage 1 x 20 kg',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),

            Row(
              children: [
                Icon(Icons.calendar_month, color: Colors.black),
                SizedBox(width: 10),
                Text(
                  'Reschedule Available',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),

            Row(
              children: [
                Icon(Icons.attach_money_outlined, color: Colors.black),
                SizedBox(width: 10),
                Text('Refundable', style: TextStyle(color: Colors.black)),
              ],
            ),

            Container(height: 1, width: double.infinity, color: Colors.grey),

            Row(
              children: [
                Icon(Icons.coffee_outlined, color: Colors.black),
                SizedBox(width: 10),
                Icon(Icons.tv_outlined, color: Colors.black),
                SizedBox(width: 10),
                Icon(Icons.wifi_outlined, color: Colors.black),
                SizedBox(width: 10),
                Icon(Icons.power_outlined, color: Colors.black),

                Spacer(),

                Text(
                  'Details',
                  style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                ),
                Icon(Icons.arrow_forward_ios, color: Colors.blueAccent),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
