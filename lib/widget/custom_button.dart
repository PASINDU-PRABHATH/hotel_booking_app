import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String btnText;
  final GestureTapCallback? onTap;
  const CustomButton({super.key, required this.btnText,this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap == null? (){} : onTap! ,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.black),
        child: Text(
          btnText,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16),
        ),
      ),
    );
  }
}
