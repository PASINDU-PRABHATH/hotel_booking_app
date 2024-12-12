import 'package:flutter/material.dart';
import 'package:hotel_management_app/utility/app_const.dart';
import 'package:hotel_management_app/widget/facility_widget.dart';

class MostRelevantWidget extends StatelessWidget {
  const MostRelevantWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        width: 350,
        height: AppConst.mostRelevantCardHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppConst.radius),
          color: Colors.white,
          // boxShadow: const [
          //   BoxShadow(
          //     color: Colors.black26,
          //     blurRadius: 5,
          //     offset: Offset(0, 1
          //     )
          //   )
          // ]
        ),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(AppConst.radius),
                  child: Image.network(
                      "https://images.unsplash.com/photo-1696930769037-483030fab0b8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"),
                ),
                Positioned(
                  top: 20,
                  right: 20,
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(91, 0, 0, 0),
                        borderRadius: BorderRadius.circular(32)),
                    child: const Center(
                      child: Icon(
                        Icons.favorite_outline_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Epitom Hotel in Kurunagala"),
                      Row(
                        children: [
                          Icon(Icons.star_rounded),
                          SizedBox(
                            width: 5,
                          ),
                          Text("4.96 (217)")
                        ],
                      ),
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
                      FacilityWidget(
                        facility: '4 guests',
                      ),
                      FacilityWidget(
                        facility: '4 guests',
                      ),
                    ],
                  ),
                  Row(
                    children: [Text("\$ ${155}")],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
