import 'package:flutter/material.dart';

class FacilityWidget extends StatelessWidget {
  const FacilityWidget({
    super.key,
    required this.facility,
  });

  final String facility;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 5,
          height: 5,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 136, 136, 136),
              borderRadius: BorderRadius.circular(5)),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(facility,style: const TextStyle(color: Colors.grey),),
        const SizedBox(width: 5,)
      ],
    );
  }
}
