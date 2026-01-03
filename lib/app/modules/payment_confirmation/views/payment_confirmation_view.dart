import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../../../../Custom_Files/custom_booking_steps.dart';
import '../../../../Custom_Files/custom_flights.dart';
import '../../../../Custom_Files/custom_user_info.dart';
import '../../../../custom_files/custom_button.dart';
import '../../../routes/app_pages.dart';
import '../controllers/payment_confirmation_controller.dart';

class PaymentConfirmationView extends GetView<PaymentConfirmationController> {
  const PaymentConfirmationView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // font color helper
    Color fontColor() => Get.isDarkMode ? Colors.black : Colors.white;
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: fontColor()),
        title: Text(
          'Payment Confirmation',
          style: TextStyle(color: fontColor()),
        ),
        backgroundColor: Get.isDarkMode
            ? colorScheme.primary
            : Colors.blueAccent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 130,
              color: Get.isDarkMode ? colorScheme.primary : Colors.blueAccent,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomBookingSteps(
                          book: 'Book',
                          color: Colors.white,
                          stepTextColor: Colors.cyan,
                          icon: Icons.check_circle,
                          isCompleted: true,
                        ),

                        CustomBookingSteps(
                          book: 'Pay',
                          color: Colors.white,
                          stepTextColor: Colors.cyan,
                          steps: '2',
                          isCompleted: false,
                        ),

                        CustomBookingSteps(
                          book: 'E-Ticket',
                          color: Colors.cyan,
                          stepTextColor: Colors.white,
                          steps: '3',
                          isCompleted: false,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.access_time, color: fontColor()),
                        SizedBox(width: 10),
                        Text(
                          'Complete payment in 01:59:46',
                          style: TextStyle(fontSize: 20, color: fontColor()),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomFlights(
                image: AssetImage('assets/images/local/images.png'),
                flightName: 'Emirats',
                priceOrDate: 'Wed, Dec 27 2023',
                takeoffTime: "09:00",
                landingTime: '16:30',
                duration: '7h 30m',
                direct: 'Direct',
              ),
            ),

            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomUserInfo(
                headText: 'Payment Method',
                prefixIcon: Icons.credit_card,
                suffixIcon: Icons.arrow_forward_ios,
                child: Row(
                  children: [
                    Icon(Icons.wallet, color: Colors.blueAccent),
                    SizedBox(width: 10),
                    Text('My Wallet', style: TextStyle(color: Colors.black)),
                    Spacer(),
                    Text(
                      '\$29,846.50',
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomUserInfo(
                headText: 'Your Have 6,450 Points',
                prefixIcon: FontAwesomeIcons.coins,
                suffixIcon: Icons.toggle_on_sharp,
                size: 40,
                child: Row(
                  children: [
                    Text(
                      '100 points equals \$1.00 You will get \n1,000 points after this booking.',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomUserInfo(
                headText: 'Discounts / Vouchers',
                prefixIcon: Icons.discount_outlined,
                suffixIcon: Icons.arrow_forward_ios,
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.blueAccent,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('VKZ5J9', style: TextStyle(color: Colors.black)),
                      SizedBox(width: 20),
                      Text('x', style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomUserInfo(
                headText: 'Price Details',
                prefixIcon: Icons.monetization_on_outlined,
                child: Column(
                  children: [
                    // SizedBox(height: 10),
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
                        Text('\$25.00', style: TextStyle(color: Colors.black)),
                      ],
                    ),

                    Row(
                      children: [
                        Text(
                          'Points Used',
                          style: TextStyle(color: Colors.black),
                        ),
                        Spacer(),
                        Text(
                          '\$64.50.00',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Text(
                          'Discount (25%)',
                          style: TextStyle(color: Colors.black),
                        ),
                        Spacer(),
                        Text('\$388.75', style: TextStyle(color: Colors.black)),
                      ],
                    ),
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
                          '\$1,204.75',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),

                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomButton(
                text: 'Pay Now',
                borderRadius: BorderRadius.circular(14),
                textColor: Colors.white,
                backgroundColor: Get.isDarkMode
                    ? colorScheme.primary
                    : Colors.blueAccent,
                minimumSize: Size(double.infinity, 50),
                onPressed: () {
                  Get.toNamed(Routes.E_TICKET);
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
