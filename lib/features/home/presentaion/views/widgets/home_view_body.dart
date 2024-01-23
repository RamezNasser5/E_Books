import 'package:e_books/features/home/presentaion/views/widgets/custom_app_bar.dart';
import 'package:e_books/features/home/presentaion/views/widgets/custom_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          CustomListView(),
        ],
      ),
    );
  }
}
