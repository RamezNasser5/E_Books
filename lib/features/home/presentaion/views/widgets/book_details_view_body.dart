import 'package:e_books/core/models/book_model/book_model.dart';
import 'package:e_books/features/home/presentaion/views/widgets/books_details_section.dart';
import 'package:e_books/features/home/presentaion/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BooksDetailsSection(bookModel: bookModel),
          const SimilarBooksSection(),
        ],
      ),
    );
  }
}
