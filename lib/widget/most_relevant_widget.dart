import 'package:flutter/material.dart';
import 'package:hotel_management_app/utility/app_const.dart';
import 'package:hotel_management_app/widget/facility_widget.dart';

class MostRelevantWidget extends StatelessWidget {
  final String title;
  final num rating;
  final String mainImage;
  final List<dynamic> amenities;
  const MostRelevantWidget({
    super.key,
    required this.title,
    required this.rating,
    required this.mainImage,
    required this.amenities,
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
                  child: Image.network(mainImage,width: 350,height:220 ,fit: BoxFit.cover,),
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
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(title),
                      Row(
                        children: [
                          const Icon(Icons.star_rounded),
                          const SizedBox(
                            width: 5,
                          ),
                          Text("$rating")
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 350,
                    height: 40,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: amenities.length,
                      itemBuilder: (context, index) => FacilityWidget(
                        facility: amenities[index],
                      ),
                    ),
                  ),
                 
                  const Row(
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
