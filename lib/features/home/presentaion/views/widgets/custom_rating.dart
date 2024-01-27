import 'package:e_books/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomRating extends StatelessWidget {
  const CustomRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellowAccent,
          size: 16,
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          '4.8',
          style: Styles.textStyle20,
        ),
        SizedBox(
          width: 12,
        ),
        Text(
          '(23456)',
          style: TextStyle(
            fontSize: 18,
          ),
        )
      ],
    );
  }
}
