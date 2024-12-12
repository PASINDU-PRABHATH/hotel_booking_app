import 'package:flutter/material.dart';
import 'package:hotel_management_app/utility/app_const.dart';
import 'package:hotel_management_app/widget/facility_widget.dart';

class DiscoverNewPlaceWidget extends StatelessWidget {
  const DiscoverNewPlaceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 260,
        height: AppConst.mostRelevantCardHeight,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppConst.radius),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(AppConst.radius),
                  child: Image.network(
                      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2a/c1/ef/49/entrance.jpg?w=1100&h=-1&s=1"),
                ),
                Positioned(
                  top: 20,
                  right: 20,
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(108, 0, 0, 0),
                        borderRadius: BorderRadius.circular(32)),
                    child: const Icon(
                      Icons.travel_explore_sharp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Sapaya"),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  size: 18,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("Tricomalee"),
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            FacilityWidget(
                              facility: '4 guests',
                            ),
                            FacilityWidget(
                              facility: '2 bedrooms',
                            ),
                          ],
                        ),
                        Row(
                          children: [Text("\$ ${100}")],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
