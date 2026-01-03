import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: BottomNavigationBar(
        backgroundColor: Get.isDarkMode ? Colors.black : Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(color: Colors.blueAccent),
        unselectedLabelStyle: TextStyle(color: Colors.blueGrey),
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.blueGrey,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.save_outlined),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_online),
            label: 'Bookings',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'Wallet'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}