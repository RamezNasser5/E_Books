import 'package:e_books/core/utils/styles.dart';
import 'package:e_books/features/home/data/models/book_model/book_model.dart';
import 'package:e_books/features/home/presentaion/views/widgets/books_action.dart';
import 'package:e_books/features/home/presentaion/views/widgets/custom_book_details_app_bar.dart';
import 'package:e_books/features/home/presentaion/views/widgets/custom_books_item.dart';
import 'package:e_books/features/home/presentaion/views/widgets/custom_rating.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.28),
          child: CustomBooksItem(
            imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Text(
          bookModel.volumeInfo?.title ?? 'Title Not Found',
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          bookModel.volumeInfo?.authors?[0] ?? 'Title Not Found',
          style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 140.0, top: 14),
          child: CustomRating(
            rating: bookModel.volumeInfo?.averageRating ?? 0,
            count: bookModel.volumeInfo?.ratingsCount ?? 0,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          child: BooksAtion(),
        ),
      ],
    );
  }
}
