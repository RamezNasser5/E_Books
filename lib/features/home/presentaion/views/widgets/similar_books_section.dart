import 'package:e_books/core/utils/styles.dart';
import 'package:e_books/features/home/presentaion/views/widgets/similar_custom_book_list._view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            right: 200.0,
            top: 20,
          ),
          child: Text(
            'You can also like',
            style: Styles.textStyle20.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SimilarBooksListView()
      ],
    );
  }
}
