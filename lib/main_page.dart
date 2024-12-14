import 'package:flutter/material.dart';
import 'package:hotel_management_app/screens/main/booking_screen.dart';
import 'package:hotel_management_app/screens/main/discover_screen.dart';
import 'package:hotel_management_app/screens/main/favorite_screen.dart';
import 'package:hotel_management_app/screens/main/message_screen.dart';
import 'package:hotel_management_app/services/firebase_services.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> screenList = const [
    DiscoverScreen(),
    FavoriteScreen(),
    BookingScreen(),
    MessageScreen()
  ];

  int screenNo = 0;

  @override
  void initState() {
    
    super.initState();
    FirebaseServices.getHotels(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[screenNo],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: 400,
          height: 70,
          padding: const EdgeInsets.all(13),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: const Color.fromARGB(219, 0, 0, 0)),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                bottomNavigationIcon(
                    icon: Icons.travel_explore_sharp,
                    navigationText: 'Discover',
                    index: 0),
                bottomNavigationIcon(
                    icon: Icons.favorite_outline_rounded,
                    navigationText: 'Favorite',
                    index: 1),
                bottomNavigationIcon(
                    icon: Icons.bookmarks_outlined,
                    navigationText: 'Booking',
                    index: 2),
                bottomNavigationIcon(
                    icon: Icons.chat_outlined,
                    navigationText: 'Messages',
                    index: 3),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget bottomNavigationIcon(
      {required IconData icon,
      required String navigationText,
      required int index}) {
    return InkWell(
      onTap: () {
        setState(() {
          screenNo = index;
        });
      },
      child: Column(
        children: [
          Icon(
            icon,
            color: index == screenNo ? Colors.white : Colors.grey,
            size: index == screenNo ? 24 : 23,
          ),
          Text(
            navigationText,
            style: TextStyle(
                color: index == screenNo ? Colors.white : Colors.grey,
                fontSize: index == screenNo ? 13 : 12),
          ),
        ],
      ),
    );
  }
}
