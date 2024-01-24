import 'package:e_books/features/home/presentaion/views/widgets/custom_best_seller_item.dart';
import 'package:flutter/material.dart';

class CustomBestSellerListView extends StatelessWidget {
  const CustomBestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(itemBuilder: ((context, index) {
        return const CustomBestSellerItem();
      })),
    );
  }
}
