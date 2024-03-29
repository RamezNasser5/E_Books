import 'package:e_books/core/utils/styles.dart';
import 'package:e_books/features/home/presentaion/views/widgets/custom_app_bar.dart';
import 'package:e_books/features/home/presentaion/views/widgets/custom_best_seller_list_view.dart';
import 'package:e_books/features/home/presentaion/views/widgets/custom_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                CustomListView(),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, bottom: 20),
                  child: Text(
                    'Best Seller',
                    style: Styles.textStyle24,
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: CustomBestSellerListView(),
          ),
        ],
      ),
    );
  }
}
