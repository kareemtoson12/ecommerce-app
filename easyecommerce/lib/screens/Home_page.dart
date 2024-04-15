import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List of image file paths
  final List<String> pics = <String>[
    'lib/assets/images/a.png',
    'lib/assets/images/k.png',
    'lib/assets/images/s.png',
    'lib/assets/images/t.png',
  ];

  final List<String> names = <String>[
    'Cup Cake',
    'Donuts',
    'Bread',
    'Cookies',
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomNavItems,
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        selectedItemColor: Color(0xFF714423),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    child: const Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF714423),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              // Container for the list view
              Container(
                height: 100,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: pics.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          Container(
                            width: 90,
                            height: 80,
                            decoration: BoxDecoration(
                                color: const Color(0xFFFBEED7),
                                borderRadius: BorderRadius.circular(50)),
                            child: Image.asset(pics[index]),
                          ),
                          Text(
                            names[index],
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Special Offers',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    child: const Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF714423),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
//spicla offeres
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFFBEED7)),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(30),
                            width: 140,
                            height: 30,
                            color: Colors.white,
                            child: const Text(
                              'Limited Time!',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          const Text(
                            'Get Special Offer',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                'Up to',
                                style: TextStyle(
                                  fontSize: 30,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 4.0),
                                child: Text(
                                  '40',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.all(30),
                            decoration: const BoxDecoration(
                                color: Colors.brown,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Shop Now',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      ),
                      Image.asset(
                        'lib/assets/images/h.png',
                        scale: 1.3,
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      toolbarHeight: 150,
      backgroundColor: const Color(0xFF714423),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Location row: icon and text
          const Row(
            children: [
              Icon(
                Icons.location_on,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(width: 8),
              Text(
                'Cairo',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          // Search bar
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Row(
                children: [
                  // Search icon
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.search, color: Colors.black),
                  ),
                  // Search input
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      actions: [
        Column(
          children: [
            Row(
              children: [
                // Icons on the right side of the AppBar
                buildIconButton(
                  Icons.shopping_cart,
                  padding: const EdgeInsets.all(5.0),
                ),
                buildIconButton(
                  Icons.notification_important_rounded,
                  padding: const EdgeInsets.all(5.0),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.settings,
                size: 50,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildIconButton(IconData iconData, {EdgeInsets? padding}) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(217, 217, 217, 0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          iconData,
          color: Colors.white,
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    // Perform other actions based on the selected item
  }
}

final List<BottomNavigationBarItem> _bottomNavItems = [
  const BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: 'Home',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.location_on),
    label: 'location',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.favorite),
    label: 'Wishlist',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.chat),
    label: 'Chat',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.person),
    label: 'profile',
  ),
];
