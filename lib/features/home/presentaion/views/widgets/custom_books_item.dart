import 'package:e_books/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBooksItem extends StatelessWidget {
  const CustomBooksItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.red,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                AssetData().testImage,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
