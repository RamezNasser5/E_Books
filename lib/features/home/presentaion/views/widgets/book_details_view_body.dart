import 'package:e_books/features/home/presentaion/views/widgets/books_details_section.dart';
import 'package:e_books/features/home/presentaion/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          BooksDetailsSection(),
          SimilarBooksSection(),
        ],
      ),
    );
  }
}
