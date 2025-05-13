import 'package:flutter/material.dart';
import '../widgets/service_card.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 40.0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Job Categories'),
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 18.0),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 8),
            child: Column(
              children: [
                // Search Bar
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search...',
                            suffixIcon: const Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Colors.grey.shade300,
                              ),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 0,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Service Cards
                // Need to get accurate icons
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: 1.65,
                    children: [
                      NotifServiceCard(
                        iconPath: 'images/electrical.svg',
                        title: 'Electrical',
                        description: 'Wiring, lighting installation...',
                        onTap: () {},
                      ),
                      NotifServiceCard(
                        iconPath: 'images/painting.svg',
                        title: 'Painting',
                        description: 'Interior & exterior painting...',
                        onTap: () {},
                      ),
                      NotifServiceCard(
                        iconPath: 'images/plumbing.svg',
                        title: 'Plumbing',
                        description: 'Pipe repairs, leak fixes...',
                        onTap: () {},
                      ),
                      NotifServiceCard(
                        iconPath: 'images/carpentry.svg',
                        title: 'Carpentry',
                        description: 'Custom Furniture, cabinet...',
                        onTap: () {},
                      ),
                      NotifServiceCard(
                        iconPath: 'images/appliance.svg',
                        title: 'Appliance Repair',
                        description: 'Kitchen appliance setup...',
                        onTap: () {},
                      ),
                      NotifServiceCard(
                        iconPath: 'images/fencing.svg',
                        title: 'Fencing & Decking',
                        description: 'Installation, refinishing...',
                        onTap: () {},
                      ),
                      NotifServiceCard(
                        iconPath: 'images/pest.svg',
                        title: 'Pest Control',
                        description: 'Termite treatment, rodent...',
                        onTap: () {},
                      ),
                      NotifServiceCard(
                        iconPath: 'images/drywall.svg',
                        title: 'Drywall & Plastering',
                        description: 'Wall repairs, finishing...',
                        onTap: () {},
                      ),
                      NotifServiceCard(
                        iconPath: 'images/windows.svg',
                        title: 'Window & Door',
                        description: 'Repairs, replacements...',
                        onTap: () {},
                      ),
                      NotifServiceCard(
                        iconPath: 'images/electrical.svg',
                        title: 'HVAC',
                        description: 'Heating, ventilation, air...',
                        onTap: () {},
                      ),
                      NotifServiceCard(
                        iconPath: 'images/masonry.svg',
                        title: 'Masonry',
                        description: 'Repairs, replacements...',
                        onTap: () {},
                      ),
                      NotifServiceCard(
                        iconPath: 'images/flooring.svg',
                        title: 'Flooring',
                        description: 'heating, ventilation, air...',
                        onTap: () {},
                      ),
                      NotifServiceCard(
                        iconPath: 'images/gardening.svg',
                        title: 'Gardening',
                        description: 'Landscaping, lawn care...',
                        onTap: () {},
                      ),
                      NotifServiceCard(
                        iconPath: 'images/roofing.svg',
                        title: 'Roofing',
                        description: 'Repairs, waterproofing...',
                        onTap: () {},
                      ),
                    ],
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
