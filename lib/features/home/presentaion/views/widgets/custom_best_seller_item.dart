import 'package:e_books/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBestSellerItem extends StatelessWidget {
  const CustomBestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 3.4 / 4,
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
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Harry Potter and the Goblet of Fire',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Poppins',
                ),
              ),
              Text(
                'J.K. Rowling',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Text(
                    '19.99 €',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  SizedBox(
                    width: 36,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellowAccent,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '4.8',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    '(23456)',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
