import 'package:flight_booking_app/custom_files/custom_selection_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../custom_files/custom_bottom_navigation_bar.dart';
import '../../../../custom_files/custom_button.dart';
import '../../../../custom_files/custom_containers_items.dart';
import '../../../../custom_files/custom_text-field.dart';
import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    Color fontColor() => Get.isDarkMode ? Colors.black : Colors.white;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top Stack for Header and Card
            Stack(
              children: [
                // Top header section
                Container(
                  height: 400,
                  width: double.infinity,
                  color: Get.isDarkMode
                      ? colorScheme.primary
                      : Colors.blueAccent,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      top: 50,
                      right: 20,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Profile Avatar
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(
                            'assets/images/profile_picture/closeup-happy-middle-aged-business-leader.jpg',
                          ),
                        ),
                        const SizedBox(width: 10),
                        // Greeting Column
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Good Morning',
                              style: TextStyle(
                                fontSize: 15,
                                color: fontColor(),
                              ),
                            ),
                            Text(
                              'Andrew Ainsley',
                              style: TextStyle(
                                fontSize: 15,
                                color: fontColor(),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        // Notification and Theme Buttons
                        Row(
                          children: [
                            Icon(
                              Icons.circle_notifications_outlined,
                              color: fontColor(),
                              size: 30,
                            ),
                            IconButton(
                              icon: Icon(
                                Get.isDarkMode
                                    ? Icons.light_mode_outlined
                                    : Icons.dark_mode_outlined,
                                color: fontColor(),
                                size: 30,
                              ),
                              onPressed: () {
                                Get.changeThemeMode(
                                  Get.isDarkMode
                                      ? ThemeMode.light
                                      : ThemeMode.dark,
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                // Flight Search Card
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      const SizedBox(height: 150),
                      Container(
                        height: 530,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: colorScheme.surface,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                            left: 15,
                            right: 15,
                          ),
                          child: Column(
                            children: [
                              // Custom Selection Buttons
                              CustomSelectionButtons(),
                              const SizedBox(height: 20),

                              // From TextField
                              CustomTextField(
                                text: 'From',
                                hintText: 'New York (JFK)',
                                prefixIcon: Icon(
                                  Icons.flight_takeoff_outlined,
                                  color: colorScheme.onSurface,
                                ),
                              ),

                              const SizedBox(height: 20),

                              // To TextField
                              CustomTextField(
                                text: 'To',
                                hintText: 'Paris (CDG)',
                                prefixIcon: Icon(
                                  Icons.flight_land_outlined,
                                  color: colorScheme.onSurface,
                                ),
                              ),

                              const SizedBox(height: 20),

                              // Departure Date
                              CustomTextField(
                                text: 'Departure Date',
                                hintText: 'Wednesday, Dec 27 2023',
                                prefixIcon: Icon(
                                  Icons.calendar_month_outlined,
                                  color: colorScheme.onSurface,
                                ),
                              ),

                              const SizedBox(height: 20),

                              // Row of Passengers and Class
                              Row(
                                children: [
                                  Expanded(
                                    child: CustomTextField(
                                      text: 'Passengers',
                                      hintText: '1 Seat',
                                      prefixIcon: Icon(
                                        Icons.group,
                                        color: colorScheme.onSurface,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  Expanded(
                                    child: CustomTextField(
                                      text: 'Class',
                                      hintText: 'Economy',
                                      prefixIcon: Icon(
                                        Icons
                                            .airline_seat_legroom_normal_outlined,
                                        color: colorScheme.onSurface,
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: 20),

                              // Search Flights Button
                              CustomButton(
                                onPressed: () {
                                  Get.toNamed(Routes.SEARCH_FLIGHT_SCREEN);
                                },
                                text: 'Search Flights',
                                minimumSize: Size(double.infinity, 60),
                                backgroundColor: Get.isDarkMode
                                    ? colorScheme.primary
                                    : Colors.blueAccent,
                                borderRadius: BorderRadius.circular(14),
                                textColor: colorScheme.onPrimary,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Special Offers Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Special Offers',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: colorScheme.onBackground,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 15,
                          color: Get.isDarkMode
                              ? colorScheme.primary
                              : Colors.blueAccent,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Get.isDarkMode
                            ? colorScheme.primary
                            : Colors.blueAccent,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Horizontal Scroll of Special Offer Cards
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    CustomContainerItems(
                      height: 170,
                      width: 350,
                      image: AssetImage(
                        'assets/images/plane/—Pngtree—london 2012 boarding passes vacation_13230207.png',
                      ),
                      color: Get.isDarkMode
                          ? colorScheme.primary
                          : Colors.blueAccent,
                    ),
                    const SizedBox(width: 20),
                    CustomContainerItems(
                      height: 170,
                      width: 350,
                      image: AssetImage(
                        'assets/images/plane/—Pngtree—london 2012 boarding passes vacation_13230207.png',
                      ),
                      color: Get.isDarkMode
                          ? colorScheme.primary
                          : Colors.blueAccent,
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),

      // Custom Bottom Navigation Bar
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
