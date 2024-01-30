import 'package:e_books/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomRating extends StatelessWidget {
  const CustomRating({super.key, required this.rating, required this.count});

  final int rating;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellowAccent,
          size: 16,
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          '$rating',
          style: Styles.textStyle20,
        ),
        const SizedBox(
          width: 12,
        ),
        Text(
          '($count)',
          style: const TextStyle(
            fontSize: 18,
          ),
        )
      ],
    );
  }
}
