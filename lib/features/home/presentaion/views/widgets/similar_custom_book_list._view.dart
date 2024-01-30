import 'package:e_books/features/home/presentaion/views/widgets/custom_books_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.17,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            return const CustomBooksItem(
              imageUrl: '',
            );
          }),
        ),
      ),
    );
  }
}
