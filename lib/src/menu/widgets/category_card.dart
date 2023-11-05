import 'package:flutter/material.dart';
import 'package:tata_bouquet/utils/colors.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.iconData,
    required this.categoryName,
  });

  final IconData iconData;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            elevation: 0,
            color: const Color.fromRGBO(255, 255, 255, 1),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(
                iconData,
                size: 50,
                color: AppColors.primary,
              ),
            ),
          ),
          Text(categoryName)
        ],
      ),
    );
  }
}
