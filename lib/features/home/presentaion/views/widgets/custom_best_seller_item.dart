import 'package:e_books/consts.dart';
import 'package:e_books/core/utils/assets.dart';
import 'package:e_books/core/utils/styles.dart';
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  'Harry Potter and the Goblet of Fire',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle24.copyWith(
                    fontFamily: kGTSectraFine,
                  ),
                ),
              ),
              const Text(
                'J.K. Rowling',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const Row(
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
