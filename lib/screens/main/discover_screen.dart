import 'package:flutter/material.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: 275,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                image: DecorationImage(
                  image: const NetworkImage(
                      "https://cf.bstatic.com/xdata/images/hotel/max1024x768/588945741.jpg?k=0c6c7b0fd96d38c70101f6b57ddb2e75eeece3889616d3a28877f5cc3d5fd7ef&o=&hp=1"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.darken),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.white,
                            size: 16,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "Colombo",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                      Icon(
                        Icons.person,
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Hey, Martin! tell us where you want to go..",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            )
          ],
        )
      ],
    ));
  }
}
