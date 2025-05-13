import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/pop_service_button.dart';
import 'services_page.dart';
import 'notifications.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  void handleNavTap(int index) {
    setState(() {
      currentIndex = index;
      // Logic for other pages goes here
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,

      // Title and Notification Button
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'FIXO',
                      style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NotificationsPage(),
                          ),
                        );
                      },
                      child: SvgPicture.asset(
                        'images/notification_empty.svg',
                        height: 24,
                        width: 24,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 13),
              // Search Bar
              SizedBox(
                height: 37,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search jobs...',
                      hintStyle: const TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                        letterSpacing: 0,
                      ),
                      suffixIcon: SizedBox(
                        width: 48,
                        height: 48,
                        child: Center(
                          child: SvgPicture.asset(
                            'images/search.svg',
                            height: 16,
                            width: 16,
                          ),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 17,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Popular Sevices Section
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 11.0),
                  child: Text(
                    'Popular Services',
                    style: const TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                      letterSpacing: 0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 7),

              // Services Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  PopServiceButton(
                    svgAsset: 'images/plumbing.svg',
                    label: 'Plumbing',
                    onTap: () {},
                  ),

                  PopServiceButton(
                    svgAsset: 'images/carpentry.svg',
                    label: 'Carpentry',
                    onTap: () {},
                  ),

                  PopServiceButton(
                    svgAsset: 'images/painting.svg',
                    label: 'Painting',
                    onTap: () {},
                  ),

                  PopServiceButton(
                    svgAsset: 'images/electrical.svg',
                    label: 'Electrical',
                    onTap: () {},
                  ),

                  PopServiceButton(
                    icon: Icons.more_horiz,
                    label: 'More',
                    onTap: () {
                      // Navigation to Notifs Page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ServicesPage(),
                        ),
                      );
                    },
                    backgroundColor: (const Color.fromARGB(255, 206, 219, 241)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
