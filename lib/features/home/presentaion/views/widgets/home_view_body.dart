import 'package:e_books/core/utils/styles.dart';
import 'package:e_books/features/home/presentaion/views/widgets/custom_app_bar.dart';
import 'package:e_books/features/home/presentaion/views/widgets/custom_best_seller_item.dart';
import 'package:e_books/features/home/presentaion/views/widgets/custom_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          CustomListView(),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Best Seller',
              style: Style.titleMedium,
            ),
          ),
          CustomBestSellerItem()
        ],
      ),
    );
  }
}
