
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomFlights extends StatelessWidget {
  final ImageProvider image;
  final String flightName;
  final String priceOrDate;
  final String takeoffTime;
  final String landingTime;
  final String duration;
  final String direct;
  final String? pax;

  const CustomFlights({
    super.key,
    required this.image,
    required this.flightName,
    required this.priceOrDate,
    required this.takeoffTime,
    required this.landingTime,
    required this.duration,
    required this.direct,
    this.pax,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Get.isDarkMode
            ? Colors.white70
            : Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: image, fit: BoxFit.cover),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  flightName,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),

                Spacer(),

                Text(
                  priceOrDate,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.blueAccent,
                  ),
                ),
                SizedBox(width: 10),
                Text(pax ?? "", style: TextStyle(color: Colors.grey)),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 1,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.grey),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('New York',style: TextStyle(color: Colors.black),),
                    Text(
                      takeoffTime,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('JFK',style: TextStyle(color: Colors.black),),
                  ],
                ),

                Column(
                  children: [
                    Icon(Icons.flight_takeoff, color: Colors.blueAccent),
                    Text(duration, style: TextStyle(color: Colors.black)),
                    Text(direct, style: TextStyle(color: Colors.black)),
                  ],
                ),

                Column(
                  children: [
                    Text('Paris',style: TextStyle(color: Colors.black),),
                    Text(
                      landingTime,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),
                    Text('CDG',style: TextStyle(color: Colors.black),),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
