import 'package:flutter/material.dart';

import 'package:hotel_management_app/providers/hotel_provider.dart';

import 'package:hotel_management_app/utility/app_colors.dart';
import 'package:hotel_management_app/utility/app_const.dart';
import 'package:hotel_management_app/widget/category_name_widget.dart';

import 'package:hotel_management_app/widget/most_relevant_widget.dart';
import 'package:hotel_management_app/widget/new_placed_widget.dart';
import 'package:provider/provider.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 300,
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
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 70,
                    ),
                    const Row(
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )
                          ],
                        ),
                        Icon(
                          Icons.person,
                          color: Colors.white,
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Hey, Martin! tell us where you want to go..",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 400,
                          height: 60,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(101, 0, 0, 0),
                            borderRadius:
                                BorderRadius.circular(AppConst.radius),
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xff027DFD),
                                Color(0xff4100E0),
                                Color(0xff1CDAC5),
                                Color(0xffF2DD22)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 10,
                          left: 30,
                          child: Row(
                            children: [
                              Icon(
                                Icons.search,
                                size: 30,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Search places",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    "Date range : Number of guests",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(195, 255, 255, 255),
                                        fontSize: 12),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          const CategoryNameWidget(
            categoryName: 'Most relevant',
          ),
          SizedBox(
              height: AppConst.mostRelevantCardHeight,
              child: Consumer<HotelProvider>(
                  builder: (context, hotelProvider, child) {
                return hotelProvider.allHotelData.isEmpty
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: hotelProvider.allHotelData.length,
                        itemBuilder: (context, index) {
                          return MostRelevantWidget(
                            title: hotelProvider.allHotelData[index].title!,
                            rating: hotelProvider.allHotelData[index].rating!,
                            mainImage:
                                hotelProvider.allHotelData[index].mainImage!,
                                amenities: hotelProvider.allHotelData[index].amenities!,
                          );
                        });
              })),
          const CategoryNameWidget(
            categoryName: 'Discover New Places',
          ),
          SizedBox(
            height: 276,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                DiscoverNewPlaceWidget(),
                DiscoverNewPlaceWidget(),
                DiscoverNewPlaceWidget(),
                DiscoverNewPlaceWidget(),
                DiscoverNewPlaceWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
