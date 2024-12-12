import 'package:flutter/material.dart';

class CategoryNameWidget extends StatelessWidget {
  const CategoryNameWidget({
    super.key,
    required this.categoryName
    
  });

  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text(
        categoryName,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      ),
    );
  }
}
